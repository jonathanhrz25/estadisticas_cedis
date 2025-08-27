<?php
session_name('Cedis');
session_start();
require("../php/connect.php");

// Verificar rol
if ($_SESSION['rol'] !== 'TI') {
    http_response_code(403);
    echo "Acceso denegado.";
    exit();
}

// Validar CEDIS
if (!isset($_SESSION['cedis'])) {
    echo "Nombre de CEDIS no definido en la sesión.";
    exit();
}

$cedis = strtolower($_SESSION['cedis']);

$cedis_validos = [
    'cancun',
    'chihuahua',
    'cordoba',
    'cuernavaca',
    'culiacan',
    'guadalajara',
    'hermosillo',
    'leon',
    'merida',
    'monterrey',
    'oaxaca',
    'pachuca',
    'puebla',
    'queretaro',
    'san_luis',
    'tuxtla',
    'veracruz',
    'villahermosa'
];

if (!in_array($cedis, $cedis_validos)) {
    echo "CEDIS no válido.";
    exit();
}

// Realizar baja lógica
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $conn = connectMysqli();

    if ($conn) {
        $sql = "UPDATE `$cedis` SET baja_camaras = '0' WHERE Id = ?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, 'i', $id);

        if (mysqli_stmt_execute($stmt)) {
            echo "Cámaras/Redes dados de baja correctamente en $cedis.";
        } else {
            echo "Error al dar de baja cámaras/redes en $cedis.";
        }

        mysqli_stmt_close($stmt);
        mysqli_close($conn);
    } else {
        echo "Error en la conexión.";
    }
} else {
    echo "ID no proporcionado.";
}
?>