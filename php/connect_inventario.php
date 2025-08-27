<?php
// Datos de conexión
$server = 'localhost';
$username = 'root';
$password = '';
$database = 'serva';

// Conexión utilizando MySQLi
$conn = new mysqli($server, $username, $password, $database);
$conn->set_charset("utf8");
if ($conn->connect_errno) {
    die('Connection Failed: ' . $conn->connect_errno . ", " . $conn->connect_error);
}

// Conexión utilizando PDO
try {
    $dsn_serva = "mysql:host=$server;dbname=$database;charset=utf8";
    $username_serva = $username;  // Usa el mismo usuario
    $password_serva = $password;  // Usa la misma contraseña

    // Crear una conexión PDO
    $pdo_serva = new PDO($dsn_serva, $username_serva, $password_serva);
    $pdo_serva->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error en la conexión a la base de datos serva: " . $e->getMessage());
}

// Resto del código...
?>
