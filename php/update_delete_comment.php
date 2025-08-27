<?php
session_name('Cedis');
session_start();
require("../php/connect.php");

// Verificar que el usuario sea un TI
if (!isset($_SESSION['user_id']) || $_SESSION['rol'] !== 'TI') {
    die("Acceso denegado.");
}

// Conexión a la base de datos
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

// Procesar la solicitud cuando se envíe el ID de la notificación
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['id'])) {
    $id = $_POST['id'];
    
    // Verificar que la notificación ha sido vista antes de permitir la eliminación del comentario
    $sql_check = "SELECT notificacion_ti FROM $table WHERE Id = $id";
    $result = mysqli_query($conn, $sql_check);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);

        // Si la notificación ha sido vista (notificacion_ti = 0), eliminar el comentario
        if ($row['notificacion_ti'] == 0) {
            // Preparar la consulta para eliminar el comentario
            $sql_delete = "UPDATE $table SET comentarios_y_observaciones = NULL WHERE Id = $id";

            if (mysqli_query($conn, $sql_delete)) {
                // Devolver una respuesta exitosa en formato JSON
                echo json_encode(['success' => true]);
            } else {
                // Si ocurre un error, devolver un mensaje de error
                echo json_encode(['success' => false, 'error' => mysqli_error($conn)]);
            }
        } else {
            // Si la notificación no ha sido vista, mostrar un error
            echo json_encode(['success' => false, 'error' => 'Primero debe modificar el registro para eliminar el comentario.']);
        }
    } else {
        echo json_encode(['success' => false, 'error' => 'Error al verificar la notificación.']);
    }
}

mysqli_close($conn);
?>
