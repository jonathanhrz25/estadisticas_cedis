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

// Detectar el CEDIS actual desde la sesión
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

// Verificar que el CEDIS tiene una tabla asignada
if (!array_key_exists($cedis, $cedis_tablas)) {
    die("CEDIS no válido.");
}

$table = $cedis_tablas[$cedis]; // Obtener el nombre de la tabla correspondiente al CEDIS

// Procesar la solicitud cuando se envíe el ID de la notificación
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['id'])) {
    $id = (int) $_POST['id']; // Asegurarse de que el ID sea un número entero

    // Preparar la consulta para actualizar el estado de la notificación a '0' (vista)
    $sql = "UPDATE $table SET notificacion_ti = 0 WHERE Id = ?";

    // Usar una sentencia preparada para evitar inyecciones de SQL
    if ($stmt = mysqli_prepare($conn, $sql)) {
        // Vincular el parámetro de entrada
        mysqli_stmt_bind_param($stmt, "i", $id);
        
        // Ejecutar la consulta
        if (mysqli_stmt_execute($stmt)) {
            // Devolver una respuesta exitosa en formato JSON
            echo json_encode(['success' => true]);
        } else {
            // Si ocurre un error, devolver un mensaje de error
            echo json_encode(['success' => false, 'error' => mysqli_stmt_error($stmt)]);
        }

        // Cerrar la sentencia
        mysqli_stmt_close($stmt);
    } else {
        // Si no se puede preparar la sentencia
        echo json_encode(['success' => false, 'error' => 'Error al preparar la consulta']);
    }
}

mysqli_close($conn);
?>
