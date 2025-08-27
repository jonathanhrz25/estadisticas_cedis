<?php
// Datos de conexión
$server = 'localhost';
$username = 'root';
$password = '';
$database = 'mesas';

// Conexión utilizando MySQLi
$conn = new mysqli($server, $username, $password, $database);
$conn->set_charset("utf8");
if ($conn->connect_errno) {
    die('Connection Failed: ' . $conn->connect_errno . ", " . $conn->connect_error);
}

// Conexión utilizando PDO
try {
    $dsn_mesas = "mysql:host=$server;dbname=$database;charset=utf8";
    $username_mesas = $username;  // Usa el mismo usuario
    $password_mesas = $password;  // Usa la misma contraseña

    // Crear una conexión PDO
    $pdo_mesas = new PDO($dsn_mesas, $username_mesas, $password_mesas);
    $pdo_mesas->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error en la conexión a la base de datos serva: " . $e->getMessage());
}
?>
