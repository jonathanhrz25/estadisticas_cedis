<?php
session_name('Cedis'); // Debe ser el mismo nombre de sesión
session_start();
require("../php/connect.php");

// Llama a la función connectMysqli() y guarda la conexión en $conn
$conn = connectMysqli();

// Verifica si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    // Si no hay sesión activa, redirige a la página de inicio de sesión
    header("Location: ./inicioSesion.php");
    exit();
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
            <a class="navbar-brand text-white" href="../mostrar/cedisLeon.php">
                <img src="../img/loguito2.png" alt="" height="45" class="d-inline-block align-text-top">
            </a>
            <ul class="navbar-nav ml-auto"></ul>
        </div>
    </nav>
</header>

<div class="modo" id="modo"></div>

<div style="padding-top: 90px;"></div>

<body>

    <!-- Inicio de Formulario PC -->
    <div class="container col-8">
        <form id="formulario" method="POST" action="../db/database_form_leon.php">

            <!-- <div class="form-group mb-3">
                <label for="clave" class="form-label">Clave:</label>
                <input type="text" name="clave" class="form-control" id="clave" aria-describedby="nameHelp"
                    placeholder="Clave del equipo" required />
            </div>

            <div class="form-group">
                <label for="tipo_equipo" class="form-label" name="tipo_equipo">Tipo de Equipo: </label><br>
                    <select class="form-control" id="tipo_equipo" name="tipo_equipo">
                        <option value="">Seleccione que tipo de equipo es…</option>
                        <option value="PC ESCRITORIO">PC ESCRITORIO</option>
                        <option value="MONITOR">Monitor</option>
                        <option value="IMPRESORA">Impresora</option>
                        <option value="HAND HELD">Hand Held</option>
                        <option value="PANTALLA">Pantalla</option>
                        <option value="LAPTOP">Laptop</option>
                        <option value="NOBREAK">NoBreak</option>
                        <option value="SWITCH O ACCESS POINT">Switch o Access Point</option>
                        <option value="DISCO DURO EXTERNO">Disco duro externo</option>
                        <option value="CAMARAS">Camaras</option>
                        <option value="REDES">Redes</option>
                    </select>
                </label>
            </div>

            <div class="form-group mb-3">
                <label for="area" class="form-label" name="area">Area: </label><br>
                <select class="form-control" id="area" name="area">
                    <option value="">Seleccione el Area…</option>
                    <option value="ADQUISICIONES">Adquisiciones</option>
                    <option value="ADMINISTRACION CEDIS">Administracion Cedis</option>
                    <option value="ALMACEN">Almacen</option>
                    <option value="ATENCION A CLIENTES">Atencion a Clientes</option>
                    <option value="BODEGAS">Bodegas</option>
                    <option value="CEDIS">Cedis</option>
                    <option value="COMPRAS">Compras</option>
                    <option value="CONTABILIDAD">Contabilidad</option>
                    <option value="CREDITO Y COBRANZA">Credito y Cobranza</option>
                    <option value="DEVOLUCIONES">Devoluciones</option>
                    <option value="EMBARQUES">Embarques</option>
                    <option value="FACTURACION">Facturacion</option>
                    <option value="FINANZAS">Finanzas</option>
                    <option value="FLOTILLAS">Flotillas</option>
                    <option value="GERENCIA">Gerencia</option>
                    <option value="IFUEL">IFuel</option>
                    <option value="INVENTARIOS">Inventarios</option>
                    <option value="JURIDICO">Juridico</option>
                    <option value="MERCADOTECNIA">Mercadotecnia</option>
                    <option value="MODELADO DE PRODUCTOS">Modelado de Productos</option>
                    <option value="PRECIOS ESPECIALES">Precios Especiales</option>
                    <option value="RECURSOS HUMANOS">Recursos Humanos</option>
                    <option value="RECEPCION">Recepcion</option>
                    <option value="RECEPCION DE MATERIALES">Recepcion de Materiales</option>
                    <option value="REABASTOS">Reabastos</option>
                    <option value="SERVICIO MEDICO">Servicio Medico</option>
                    <option value="SISTEMAS">Sistemas</option>
                    <option value="SURTIDO CEDIS">Surtido Cedis</option>
                    <option value="TELEMARKETING">Telemarketing</option>
                    <option value="VIGILANCIA">Vigilancia</option>
                    <option value="VENTAS">Ventas</option>
                </select>
            </div>

            <div class="form-group">
                <label for="marca" class="form-label" name="marca">Marca:</label><br>
                <select class="form-control" id="marca" name="marca">
                    <option value="">Seleccione la marca…</option>
                    <option value="HP">HP</option>
                    <option value="DELL">DELL</option>
                    <option value="LENOVO">LENOVO</option>
                    <option value="LG">LG</option>
                    <option value="ACER">ACER</option>
                    <option value="ASUS">ASUS</option>
                    <option value="SAMSUMG">SAMSUMG</option>
                    <option value="ENSAMBLADA">ENSAMBLADA</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Modelo: </label>
                <input type="text" name="modelo" class="form-control" id="modelo" aria-describedby="nameHelp"
                    placeholder="Modelo del Equipo" />
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Especificaciones: </label>
                <input type="text" name="especificaciones" class="form-control" id="especificaciones"
                    aria-describedby="nameHelp" placeholder="Especificaciones del Equipo" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Equipo</label>
                <textarea class="form-control" name="observaciones_equipo" id="observaciones_equipo"
                    rows="3" placeholder="Escriba Comentarios y Observaciones"></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="porcentaje_equipo" class="form-label">Porcentaje Equipo:</label>
                <input type="text" name="porcentaje_equipo" class="form-control" id="porcentaje_equipo" aria-describedby="nameHelp"
                    placeholder="Porcentaje Equipo" />
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Teclado: </label>
                <input type="text" name="teclado" class="form-control" id="teclado" aria-describedby="nameHelp"
                    placeholder="Marca de teclado" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Teclado</label>
                <textarea class="form-control" name="observaciones_teclado" id="observaciones_teclado"
                    rows="3" placeholder="Escriba Comentarios y Observaciones"></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="porcentaje_teclado" class="form-label">Porcentaje Teclado:</label>
                <input type="text" name="porcentaje_teclado" class="form-control" id="porcentaje_teclado" aria-describedby="nameHelp"
                    placeholder="Porcentaje Teclado" />
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Mouse: </label>
                <input type="text" name="mouse" class="form-control" id="mouse" aria-describedby="nameHelp"
                    placeholder="Marca de mouse" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Mouse</label>
                <textarea class="form-control" name="observaciones_mouse" id="observaciones_mouse"
                    rows="3" placeholder="Escriba Comentarios y Observaciones"></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="porcentaje_mouse" class="form-label">Porcentaje Mouse:</label>
                <input type="text" name="porcentaje_mouse" class="form-control" id="porcentaje_mouse" aria-describedby="nameHelp"
                    placeholder="Porcentaje Mouse" />
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Pantalla: </label>
                <input type="text" name="pantalla" class="form-control" id="pantalla" aria-describedby="nameHelp"
                    placeholder="Marca de pantalla" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Pantalla</label>
                <textarea class="form-control" name="observaciones_pantalla" id="observaciones_pantalla"
                    rows="3" placeholder="Escriba Comentarios y Observaciones"></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="porcentaje_pantalla" class="form-label">Porcentaje Pantalla:</label>
                <input type="text" name="porcentaje_pantalla" class="form-control" id="porcentaje_pantalla" aria-describedby="nameHelp"
                    placeholder="Porcentaje Pantalla" />
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">NoBreak: </label>
                <input type="text" name="nobreak" class="form-control" id="nobreak" aria-describedby="nameHelp"
                    placeholder="Marca de nobreak" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones NoBreak</label>
                <textarea class="form-control" name="observaciones_nobreak" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="porcentaje_nobreak" class="form-label">Porcentaje NoBreak:</label>
                <input type="text" name="porcentaje_nobreak" class="form-control" id="porcentaje_nobreak" aria-describedby="nameHelp"
                    placeholder="Porcentaje NoBreak" />
            </div> -->

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Camaras: </label>
                <input type="text" name="camaras" class="form-control" id="camaras" aria-describedby="nameHelp"
                    placeholder="Camaras" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Camaras</label>
                <textarea class="form-control" name="observaciones_camaras" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="porcentaje_camaras" class="form-label">Porcentaje Camaras:</label>
                <input type="text" name="porcentaje_camaras" class="form-control" id="porcentaje_camaras" aria-describedby="nameHelp"
                    placeholder="Porcentaje NoBreak" />
            </div>

            <div class="form-group mb-3">
                <label for="exampleInputEmail1" class="form-label">Redes: </label>
                <input type="text" name="redes" class="form-control" id="redes" aria-describedby="nameHelp"
                    placeholder="Redes" />
            </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea1">Comentarios y Observaciones Redes</label>
                <textarea class="form-control" name="observaciones_redes" rows="3"
                    placeholder="Escriba Comentarios y Observaciones"></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="porcentaje_redes" class="form-label">Porcentaje Redes:</label>
                <input type="text" name="porcentaje_redes" class="form-control" id="porcentaje_redes" aria-describedby="nameHelp"
                    placeholder="Porcentaje Redes" />
            </div>

            <!-- Agrega más campos según sea necesario -->
            <div class="text-center"><br>
                <button type="submit" class="btn btn-primary">Guardar Cambios</button>
            </div><br><br><br>
        </form>
    </div>
</body>

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


</html>