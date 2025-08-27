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
$sql = "SELECT * FROM cuernavaca WHERE Id = $id";
$result = mysqli_query($conn, $sql);

if (!$result) {
    echo "Error al obtener datos del registro.";
    exit;
}

$mostrar = mysqli_fetch_assoc($result);

// Procesar el formulario de modificación si se ha enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Recuperar los datos del formulario
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
    

    // Consulta SQL para actualizar los datos en la base de datos
    $update_sql = "UPDATE cuernavaca SET clave = '$clave', area = '$area', equipo = '$equipo', marca = '$marca', modelo = '$modelo', especificaciones = '$especificaciones', observaciones_equipo = '$observaciones_equipo', estado = '$estado', teclado = '$teclado', observaciones_teclado = '$observaciones_teclado', porcentaje_teclado = '$porcentaje_teclado', mouse = '$mouse', observaciones_mouse = '$observaciones_mouse', porcentaje_mouse = '$porcentaje_mouse', pantalla = '$pantalla', observaciones_pantalla = '$observaciones_pantalla', porcentaje_pantalla = '$porcentaje_pantalla', nobreak = '$nobreak', observaciones_nobreak = '$observaciones_nobreak', porcentaje_nobreak = '$porcentaje_nobreak' WHERE Id = $id";

    // Ejecutar la consulta de actualización
    $update_result = mysqli_query($conn, $update_sql);

    if ($update_result) {
        // La actualización se realizó con éxito
        // Muestra la alerta después de realizar los cambios
        echo '<script>alert("Cambios realizados correctamente.");</script>';

        /// Redirigir a la página principal después de la modificación
        header("Location: ../mostrar/cedisCuernavaca.php");
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
            <a class="navbar-brand text-white" href="../mostrar/cedisCuernavaca.php">
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
        <h1 class="display-6">Modificar Cedis Cuernavaca</h1>
        <form action="" method="POST">

        <div class="form-group">
            <label for="clave">Clave:</label>
            <input type="text" class="form-control" name="clave" value="<?php echo $mostrar['clave']; ?>" required>
        </div>

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
                <label for="area" class="form-label" name="area">Area: </label><br>
                <select class="form-control" id="area" name="area">
                    <option value="">Seleccione el Area…</option>
                    <option value="ADQUISICIONES" <?php if ($mostrar['area'] == "ADQUISICIONES")echo "selected"; ?>>Adquisiciones</option>
                    <option value="ADMINISTRACION CEDIS" <?php if ($mostrar['area'] == "ADMINISTRACION CEDIS")echo "selected"; ?>>Administracion Cedis</option>
                    <option value="ALMACEN" <?php if ($mostrar['area'] == "ALMACEN")echo "selected"; ?>>Almacen</option>
                    <option value="ATENCION A CLIENTES" <?php if ($mostrar['area'] == "ATENCION A CLIENTES")echo "selected"; ?>>Atencion a Clientes</option>
                    <option value="BODEGAS" <?php if ($mostrar['area'] == "BODEGAS")echo "selected"; ?>>Bodegas</option>
                    <option value="CEDIS" <?php if ($mostrar['area'] == "CEDIS")echo "selected"; ?>>Cedis</option>
                    <option value="COMPRAS" <?php if ($mostrar['area'] == "COMPRAS")echo "selected"; ?>>Compras</option>
                    <option value="CONTABILIDAD" <?php if ($mostrar['area'] == "CONTABILIDAD")echo "selected"; ?>>Contabilidad</option>
                    <option value="CREDITO Y COBRANZA" <?php if ($mostrar['area'] == "CREDITO Y COBRANZA")echo "selected"; ?>>Credito y Cobranza</option>
                    <option value="DEVOLUCIONES" <?php if ($mostrar['area'] == "DEVOLUCIONES")echo "selected"; ?>>Devoluciones</option>
                    <option value="EMBARQUES" <?php if ($mostrar['area'] == "EMBARQUES")echo "selected"; ?>>Embarques</option>
                    <option value="FACTURACION" <?php if ($mostrar['area'] == "FACTURACION")echo "selected"; ?>>Facturacion</option>
                    <option value="FINANZAS" <?php if ($mostrar['area'] == "FINANZAS")echo "selected"; ?>>Finanzas</option>
                    <option value="FLOTILLAS" <?php if ($mostrar['area'] == "FLOTILLAS")echo "selected"; ?>>Flotillas</option>
                    <option value="GERENCIA" <?php if ($mostrar['area'] == "GERENCIA")echo "selected"; ?>>Gerencia</option>
                    <option value="IFUEL" <?php if ($mostrar['area'] == "IFUEL")echo "selected"; ?>>IFuel</option>
                    <option value="INVENTARIOS" <?php if ($mostrar['area'] == "INVENTARIOS")echo "selected"; ?>>Inventarios</option>
                    <option value="JURIDICO" <?php if ($mostrar['area'] == "JURIDICO")echo "selected"; ?>>Juridico</option>
                    <option value="MERCADOTECNIA" <?php if ($mostrar['area'] == "MERCADOTECNIA")echo "selected"; ?>>Mercadotecnia</option>
                    <option value="MODELADO DE PRODUCTOS" <?php if ($mostrar['area'] == "MODELADO DE PRODUCTOS")echo "selected"; ?>>Modelado de Productos</option>
                    <option value="PRECIOS ESPECIALES" <?php if ($mostrar['area'] == "PRECIOS ESPECIALES")echo "selected"; ?>>Precios Especiales</option>
                    <option value="RECURSOS HUMANOS" <?php if ($mostrar['area'] == "RECURSOS HUMANOS")echo "selected"; ?>>Recursos Humanos</option>
                    <option value="RECEPCION" <?php if ($mostrar['area'] == "RECEPCION")echo "selected"; ?>>Recepcion</option>
                    <option value="RECEPCION DE MATERIALES" <?php if ($mostrar['area'] == "RECEPCION DE MATERIALES")echo "selected"; ?>>Recepcion de Materiales</option>
                    <option value="REFACCIONARIA ACTOPAN" <?php if ($mostrar['area'] == "REFACCIONARIA ACTOPAN")echo "selected"; ?>>Refaccionaria Actopan</option>
                    <option value="REFACCIONARIA MADERO" <?php if ($mostrar['area'] == "REFACCIONARIA MADERO")echo "selected"; ?>>Refaccionaria Madero</option>
                    <option value="REFACCIONARIA MINERO" <?php if ($mostrar['area'] == "REFACCIONARIA MINERO")echo "selected"; ?>>Refaccionaria Minero</option>
                    <option value="REFACCIONARIA TULANCINGO" <?php if ($mostrar['area'] == "REFACCIONARIA TULANCINGO")echo "selected"; ?>>Refaccionaria Tulancingo</option>
                    <option value="REABASTOS" <?php if ($mostrar['area'] == "REABASTOS")echo "selected"; ?>>Reabastos</option>
                    <option value="SERVICIO MEDICO" <?php if ($mostrar['area'] == "SERVICIO MEDICO")echo "selected"; ?>>Servicio Medico</option>
                    <option value="SISTEMAS" <?php if ($mostrar['area'] == "SISTEMAS")echo "selected"; ?>>Sistemas</option>
                    <option value="SURTIDO CEDIS" <?php if ($mostrar['area'] == "SURTIDO CEDIS")echo "selected"; ?>>Surtido Cedis</option>
                    <option value="TELEMARKETING" <?php if ($mostrar['area'] == "TELEMARKETING")echo "selected"; ?>>Telemarketing</option>
                    <option value="VIGILANCIA" <?php if ($mostrar['area'] == "VIGILANCIA")echo "selected"; ?>>Vigilancia</option>
                    <option value="VENTAS" <?php if ($mostrar['area'] == "VENTAS")echo "selected"; ?>>Ventas</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Usuario: </label>
                <input type="text" name="usuario" class="form-control" id="usuario" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['usuario']; ?>" placeholder="Usuario del Equipo" />
            </div>

            <div class="form-group">
                <label for="marca" class="form-label" name="marca">Marca:</label><br>
                <select class="form-control" id="marca" name="marca">
                    <option value="">Seleccione la marca …</option>
                    <option value="HP" <?php if ($mostrar['marca'] == "HP")echo "selected"; ?>>HP</option>
                    <option value="DELL" <?php if ($mostrar['marca'] == "DELL")echo "selected"; ?>>DELL</option>
                    <option value="LENOVO" <?php if ($mostrar['marca'] == "LENOVO")echo "selected"; ?>>LENOVO</option>
                    <option value="LG" <?php if ($mostrar['marca'] == "LG")echo "selected"; ?>>LG</option>
                    <option value="ACER" <?php if ($mostrar['marca'] == "ACER")echo "selected"; ?>>ACER</option>
                    <option value="ASUS" <?php if ($mostrar['marca'] == "ASUS")echo "selected"; ?>>ASUS</option>
                    <option value="SAMSUMG" <?php if ($mostrar['marca'] == "SAMSUMG")echo "selected"; ?>>SAMSUMG</option>
                    <option value="BROTHER" <?php if ($mostrar['marca'] == "BROTHER")echo "selected"; ?>>BROTHER</option>
                    <option value="BIXOLON" <?php if ($mostrar['marca'] == "BIXOLON")echo "selected"; ?>>BIXOLON</option>
                    <option value="ENSAMBLADA" <?php if ($mostrar['marca'] == "ENSAMBLADA")echo "selected"; ?>>ENSAMBLADA</option>
                    <option value="EcLine" <?php if ($mostrar['marca'] == "EcLine")echo "selected"; ?>>EcLine</option>
                    <option value="Datalogic" <?php if ($mostrar['marca'] == "Datalogic")echo "selected"; ?>>Datalogic</option>
                    <option value="Honeywell" <?php if ($mostrar['marca'] == "Honeywell")echo "selected"; ?>>Honeywell</option>
                    <option value="Zebra" <?php if ($mostrar['marca'] == "Zebra")echo "selected"; ?>>Zebra</option>
                    <option value="3nStar" <?php if ($mostrar['marca'] == "3nStar")echo "selected"; ?>>3nStar</option>
                    <option value="Symbol" <?php if ($mostrar['marca'] == "Symbol")echo "selected"; ?>>Symbol</option>
                    <option value="Ghia" <?php if ($mostrar['marca'] == "Ghia")echo "selected"; ?>>Ghia</option>
                    <option value="Eclipse" <?php if ($mostrar['marca'] == "Eclipse")echo "selected"; ?>>Eclipse</option>
                    <option value="NEWLAND" <?php if ($mostrar['marca'] == "NEWLAND")echo "selected"; ?>>NEWLAND</option>
                    <option value="CyberPower" <?php if ($mostrar['marca'] == "CyberPower")echo "selected"; ?>>CyberPower</option>
                    <option value="ISB SOLA BASIC" <?php if ($mostrar['marca'] == "ISB SOLA BASIC")echo "selected"; ?>>ISB SOLA BASIC</option>
                    <option value="AOC" <?php if ($mostrar['marca'] == "ASUS")echo "selected"; ?>>AOC</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Modelo: </label>
                <input type="text" name="modelo" class="form-control" id="modelo" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['modelo']; ?>" placeholder="Modelo del Equipo" />
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Especificaciones: </label>
                <input type="text" name="especificaciones" class="form-control" id="especificaciones"
                    value="<?php echo $mostrar['especificaciones']; ?>" aria-describedby="nameHelp"
                    placeholder="Especificaciones del Equipo" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Equipo</label>
                <textarea class="form-control" name="observaciones_equipo" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"><?php echo $mostrar['observaciones_equipo']; ?></textarea>
            </div>


            <div class="form-group">
                <label for="estado">Porcentaje Equipo:</label>
                <input type="text" class="form-control" name="estado" value="<?php echo $mostrar['estado']; ?>">
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Teclado: </label>
                <input type="text" name="teclado" class="form-control" id="teclado" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['teclado']; ?>" placeholder="teclado" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Teclado</label>
                <textarea class="form-control" name="observaciones_teclado" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"><?php echo $mostrar['observaciones_teclado']; ?></textarea>
            </div>

            <div class="form-group">
                <label for="porcentaje_equipo">Porcentaje Teclado:</label>
                <input type="text" class="form-control" name="porcentaje_teclado" value="<?php echo $mostrar['porcentaje_teclado']; ?>">
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Mouse: </label>
                <input type="text" name="mouse" class="form-control" id="mouse" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['mouse']; ?>" placeholder="mouse" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Mouse</label>
                <textarea class="form-control" name="observaciones_mouse" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"><?php echo $mostrar['observaciones_mouse']; ?></textarea>
            </div>

            <div class="form-group">
                <label for="porcentaje_equipo">Porcentaje Mouse:</label>
                <input type="text" class="form-control" name="porcentaje_mouse" value="<?php echo $mostrar['porcentaje_mouse']; ?>">
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Pantalla: </label>
                <input type="text" name="pantalla" class="form-control" id="pantalla" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['pantalla']; ?>" placeholder="pantalla" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Pantalla</label>
                <textarea class="form-control" name="observaciones_pantalla" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"><?php echo $mostrar['observaciones_pantalla']; ?></textarea>
            </div>

            <div class="form-group">
                <label for="porcentaje_equipo">Porcentaje Pantalla:</label>
                <input type="text" class="form-control" name="porcentaje_pantalla" value="<?php echo $mostrar['porcentaje_pantalla']; ?>">
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">NoBreak: </label>
                <input type="text" name="nobreak" class="form-control" id="nobreak" aria-describedby="nameHelp"
                    value="<?php echo $mostrar['nobreak']; ?>" placeholder="nobreak" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones NoBreak</label>
                <textarea class="form-control" name="observaciones_nobreak" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"><?php echo $mostrar['observaciones_nobreak']; ?></textarea>
            </div>

            <div class="form-group">
                <label for="porcentaje_equipo">Porcentaje NoBreak:</label>
                <input type="text" class="form-control" name="porcentaje_nobreak" value="<?php echo $mostrar['porcentaje_nobreak']; ?>">
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