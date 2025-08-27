<?php
session_name('Cedis');
session_start();
require("../php/connect.php");
require("../php/connect_mesas.php"); // Conexión al proyecto mesas

// Verificar que el usuario sea un Operador
if (!isset($_SESSION['user_id']) || $_SESSION['rol'] !== 'Operador') {
    die("Acceso denegado.");
}

// Conexión a la base de datos principal
$conn = connectMysqli();

if (!$conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Detectar el CEDIS actual
$cedis = $_SESSION['cedis'] ?? ''; // Asumiendo que el CEDIS está guardado en la sesión
if (empty($cedis)) {
    die("No se pudo determinar el CEDIS.");
}

// Definir las tablas de los CEDIS disponibles
$cedis_tablas = [
    'Pachuca' => 'pachuca',
    'Cancun' => 'cancun',
    'Merida' => 'merida',
    'Oaxaca' => 'oaxaca',
    'Cuernavaca' => 'cuernavaca',
    'Villahermosa' => 'villahermosa',
    'Puebla' => 'puebla',
    'Tuxtla' => 'tuxtla',
    'Veracruz' => 'veracruz',
    'Cordoba' => 'cordoba',
    'Culiacán' => 'culiacan',
    'León' => 'leon',
    'Querétaro' => 'queretaro',
    'San_Luis' => 'san_luis',
    'Monterrey' => 'monterrey',
    'Chihuahua' => 'chihuahua',
    'Hermosillo' => 'hermosillo',
    'Guadalajara' => 'guadalajara'
];

// Verificar si el CEDIS actual tiene una tabla asignada
if (!array_key_exists($cedis, $cedis_tablas)) {
    die("CEDIS no válido.");
}

$table = $cedis_tablas[$cedis]; // Obtener el nombre de la tabla correspondiente

// Obtener el nombre del usuario desde la base de datos
$user_id = $_SESSION['user_id']; // ID del usuario en la sesión
$query = "SELECT usuario, area FROM usuarios WHERE id = '$user_id'"; // Consultar también el área
$result = mysqli_query($conn, $query);
$user_info = mysqli_fetch_assoc($result);

if (!$user_info) {
    die("No se pudo obtener el nombre del usuario.");
}

$usuario_nombre = $user_info['usuario']; // Nombre del usuario
$usuario_area = $user_info['area']; // Área del usuario (extraída de la base de datos de estadisticas_cedis)

// Procesar el formulario cuando se envíe
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $id_registro = $_POST['id_registro'];
    $comentario = mysqli_real_escape_string($conn, $_POST['comentarios']);
    
    // Preparar la consulta para actualizar la tabla correspondiente
    $sql = "UPDATE $table SET comentarios_y_observaciones = '$comentario', notificacion_ti = 1 WHERE Id = $id_registro";

    if (mysqli_query($conn, $sql)) {
        try {
            // Generar una descripción con el nombre del usuario
            $descripcion = "Se ha añadido un comentario en el Cedis: $cedis. Comentario: $comentario";

            // Insertar el ticket en el sistema "mesas"
            $sqlTicket = "INSERT INTO problemas (problema, descripcion, usuario, estado, fecha, area) 
                          VALUES (:problema, :descripcion, :usuario, 'Abierto', NOW(), :area)";
            $stmtTicket = $pdo_mesas->prepare($sqlTicket);
            $stmtTicket->execute([
                ':problema' => 'Estadísticas de Cedis',
                ':descripcion' => $descripcion,
                ':usuario' => $usuario_nombre, // Guardar el nombre del usuario
                ':area' => $usuario_area // También guardamos el área en el ticket
            ]);

            // Redirigir al CEDIS correspondiente después de guardar el comentario y generar el ticket
            header("Location: ../mostrar/cedis" . ucfirst($cedis) . ".php");
            exit();
        } catch (PDOException $e) {
            error_log("Error al crear ticket: " . $e->getMessage());
            echo "El comentario se guardó, pero hubo un error al generar el ticket.";
        }
    } else {
        echo "Error al guardar el comentario: " . mysqli_error($conn);
    }
}

mysqli_close($conn);
?>
