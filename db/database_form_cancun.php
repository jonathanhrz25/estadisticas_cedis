<?php
session_start();
require("../php/connect.php");

// Llamar a la función para obtener la conexión
$conn = connectMysqli();

// Recopilar datos del formulario - Cancun
$clave = $_POST['clave'];
$area = $_POST['area'];
$equipo = $_POST['equipo'];
$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$especificaciones = $_POST['especificaciones'];
$observaciones_equipo = $_POST['observaciones_equipo'];
$estado = $_POST['estado'];
$teclado = $_POST['teclado'];
$observaciones_teclado = $_POST['observaciones_teclado'];
$porcentaje_teclado = $_POST['porcentaje_teclado'];
$mouse = $_POST['mouse'];
$observaciones_mouse = $_POST['observaciones_mouse'];
$porcentaje_mouse = $_POST['porcentaje_mouse'];
$pantalla = $_POST['pantalla'];
$observaciones_pantalla = $_POST['observaciones_pantalla'];
$porcentaje_pantalla = $_POST['porcentaje_pantalla'];
$nobreak = $_POST['nobreak'];
$observaciones_nobreak = $_POST['observaciones_nobreak'];
$porcentaje_nobreak = $_POST['porcentaje_nobreak'];
$camaras = $_POST['camaras'];
$observaciones_camaras = $_POST['observaciones_camaras'];
$porcentaje_camaras = $_POST['porcentaje_camaras'];
$redes = $_POST['redes'];
$observaciones_redes = $_POST['observaciones_redes'];
$porcentaje_redes = $_POST['porcentaje_redes'];


// Insertar datos en la tabla 'formulario Cancun'
$sql = "INSERT INTO cancun (clave, area, equipo, marca, modelo, especificaciones, observaciones_equipo, estado, teclado, observaciones_teclado, porcentaje_teclado, mouse, observaciones_mouse, porcentaje_mouse, pantalla, observaciones_pantalla, porcentaje_pantalla, nobreak, observaciones_nobreak, porcentaje_nobreak, camaras, observaciones_camaras, porcentaje_camaras, redes, observaciones_redes, porcentaje_redes)
    VALUES ('$clave', '$area', '$equipo', '$marca', '$modelo', '$especificaciones', '$observaciones_equipo', '$estado', '$teclado', '$observaciones_teclado', '$porcentaje_teclado', '$mouse', '$observaciones_mouse', '$porcentaje_mouse', '$pantalla', '$observaciones_pantalla', '$porcentaje_pantalla', '$nobreak', '$observaciones_nobreak', '$porcentaje_nobreak', '$camaras', '$observaciones_camaras', '$porcentaje_camaras', '$redes', '$observaciones_redes', '$porcentaje_redes')";
$insertar = mysqli_query($conn, $sql);

if ($insertar == true) {
    echo "<script> alert('Sus datos han sido registrados');
            window.location ='../mostrar/cedisCancun.php';</script>";
} else {
    echo "<script> alert('ERROR sus datos NO han sido registrados');
  window.location ='../formulario/form_cancun.php';</script>";
}

// Cerrar conexión con la base de datos
?>