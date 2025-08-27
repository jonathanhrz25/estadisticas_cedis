<?php
session_name('Cedis'); // Debe ser el mismo nombre de sesión
session_start();
require ("../php/connect.php");

// Llama a la función connectMysqli() y guarda la conexión en $conn
$conn = connectMysqli();

// Verifica si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    // Si no hay sesión activa, redirige a la página de inicio de sesión
    header("Location: ./inicioSesion.php");
    exit();
}

// Verificar si se ha enviado un ID válido
if (!isset($_GET['id'])) {
    echo "ID no proporcionado.";
    exit;
}

$id = $_GET['id'];

// Consulta SQL para obtener los datos del registro
$sql = "SELECT * FROM pachuca WHERE Id = $id";
$result = mysqli_query($conn, $sql);

if (!$result) {
    echo "Error al obtener datos del registro.";
    exit;
}

$mostrar = mysqli_fetch_assoc($result);

// Procesar el formulario de modificación si se ha enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Recuperar los datos del formulario
   
    $equipo = $_POST['equipo'];
    $camaras = $_POST['camaras'];
    $observaciones_camaras = $_POST['observaciones_camaras'];
    $porcentaje_camaras = $_POST['porcentaje_camaras'];
    $redes = $_POST['redes'];
    $observaciones_redes = $_POST['observaciones_redes'];
    $porcentaje_redes = $_POST['porcentaje_redes'];
    

    // Consulta SQL para actualizar los datos en la base de datos
    $update_sql = "UPDATE pachuca SET clave = '$clave', area = '$area', equipo = '$equipo', marca = '$marca', modelo = '$modelo', especificaciones = '$especificaciones', observaciones_equipo = '$observaciones_equipo', estado = '$estado', teclado = '$teclado', observaciones_teclado = '$observaciones_teclado', porcentaje_teclado = '$porcentaje_teclado', mouse = '$mouse', observaciones_mouse = '$observaciones_mouse', porcentaje_mouse = '$porcentaje_mouse', pantalla = '$pantalla', observaciones_pantalla = '$observaciones_pantalla', porcentaje_pantalla = '$porcentaje_pantalla', nobreak = '$nobreak', observaciones_nobreak = '$observaciones_nobreak', porcentaje_nobreak = '$porcentaje_nobreak' WHERE Id = $id";

    // Ejecutar la consulta de actualización
    $update_result = mysqli_query($conn, $update_sql);

    if ($update_result) {
        // La actualización se realizó con éxito
        // Muestra la alerta después de realizar los cambios
        echo '<script>alert("Cambios realizados correctamente.");</script>';

        /// Redirigir a la página principal después de la modificación
        header("Location: ../mostrar/cedisPachuca.php");
        exit;
    } else {
        echo "Error al actualizar los datos en la base de datos: " . mysqli_error($conn);
        exit;
    }
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../img/icono2.png" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/dark.css">
    <title>Sistemas Cedis</title>
    <!-- Agregar enlaces a tus archivos CSS y JS -->
</head>

<header>
    <nav class="navbar navbar-dark bg-dark fixed-top" style="background-color: #081856!important;">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="../mostrar/cedisPachuca.php">
                <img src="../img/loguito2.png" alt="" height="45" class="d-inline-block align-text-top">
            </a>
            <ul class="navbar-nav ml-auto"></ul>
        </div>
    </nav>
</header>

<div class="modo" id="modo"></div>

<body>
    <!-- El resto de tu contenido HTML aquí -->

    <div class="container col-8 mt-5"><br>
        <h1 class="display-6">Modificar Cedis Merida</h1>
        <form action="" method="POST">

            <div class="form-group">
                <label for="equipo" class="form-label" name="equipo">Tipo de Equipo: </label><br>
                    <select class="form-control" id="equipo" name="equipo">
                        <option value="">Seleccione que tipo de equipo es…</option>
                        <option value="PC ESCRITORIO" <?php if ($mostrar['equipo'] == "PC ESCRITORIO") echo "selected"; ?>>PC ESCRITORIO</option>
                        <option value="MONITOR" <?php if ($mostrar['equipo'] == "MONITOR") echo "selected"; ?>>Monitor</option>
                        <option value="IMPRESORA" <?php if ($mostrar['equipo'] == "IMPRESORA") echo "selected"; ?>>Impresora</option>
                        <option value="HAND HELD" <?php if ($mostrar['equipo'] == "HAND HELD") echo "selected"; ?>>Hand Held</option>
                        <option value="PANTALLA" <?php if ($mostrar['equipo'] == "PANTALLA") echo "selected"; ?>>Pantalla</option>
                        <option value="LAPTOP" <?php if ($mostrar['equipo'] == "LAPTOP") echo "selected"; ?>>Laptop</option>
                        <option value="NOBREAK" <?php if ($mostrar['equipo'] == "NOBREAK") echo "selected"; ?>>NoBreak</option>
                        <option value="SWITCH O ACCESS POINT" <?php if ($mostrar['equipo'] == "SWITCH") echo "selected"; ?>>Switch o Access Point</option>
                        <option value="DISCO DURO EXTERNO" <?php if ($mostrar['equipo'] == "DISCO DURO EXTERNO") echo "selected"; ?>>Disco duro externo</option>
                        <option value="CAMARAS" <?php if ($mostrar['equipo'] == "CAMARAS") echo "selected"; ?>>Camaras</option>
                        <option value="REDES" <?php if ($mostrar['equipo'] == "REDES") echo "selected"; ?>>Redes</option>
                    </select>
                </label>
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Camaras: </label>
                <input type="text" name="camaras" class="form-control" id="camaras" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['camaras']; ?>" placeholder="Camaras" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Camaras</label>
                <textarea class="form-control" name="observaciones_camaras" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"><?php echo $mostrar['observaciones_camaras']; ?></textarea>
            </div>

            <div class="form-group">
                <label for="porcentaje_equipo">Porcentaje Camaras:</label>
                <input type="text" class="form-control" name="porcentaje_camaras" value="<?php echo $mostrar['porcentaje_camaras']; ?>">
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Redes: </label>
                <input type="text" name="redes" class="form-control" id="redes" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['redes']; ?>" placeholder="Redes" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Redes</label>
                <textarea class="form-control" name="observaciones_redes" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"><?php echo $mostrar['observaciones_redes']; ?></textarea>
            </div>

            <div class="form-group">
                <label for="porcentaje_equipo">Porcentaje Redes:</label>
                <input type="text" class="form-control" name="porcentaje_redes" value="<?php echo $mostrar['porcentaje_redes']; ?>">
            </div>

            <!-- Agrega más campos según sea necesario -->
            <div class="text-center"><br>
                <button type="submit" class="btn btn-primary">Guardar Cambios</button>
            </div><br><br><br>
        </form>
    </div>

    <script src="../js/main.js"></script>

    <script> 
  // Bloquear clic derecho y teclas específicas
  $(document).ready(function() {
    // Bloquear clic derecho
    $(document).bind("contextmenu", function (e) {
      e.preventDefault();
    });

    // Bloquear ciertas teclas (F12, Ctrl+U, Ctrl+Shift+I)
    $(document).keydown(function (e) {
      if (e.which === 123) { // F12
        return false;
      }
      if (e.ctrlKey && (e.shiftKey && e.keyCode === 73)) { // Ctrl+Shift+I
        return false;
      }
      if (e.ctrlKey && (e.keyCode === 85 || e.keyCode === 117)) { // Ctrl+U
        return false;
      }
    });
  });
</script>

    <?php include '../css/footer.php' ?>
</body>

</html>