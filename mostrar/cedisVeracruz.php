<?php
session_name('Cedis');
session_start();
require("../php/connect.php");

// Establecer el CEDIS actual
$_SESSION['cedis'] = 'Veracruz';

// Verifica si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    header("Location: ./inicioSesion.php");
    exit();
}

$conn = connectMysqli();
if (!$conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Inicializar acumuladores
$total_porcentaje_estado = $total_porcentaje_teclado = $total_porcentaje_mouse = $total_porcentaje_pantalla = $total_porcentaje_nobreak = $total_porcentaje_camaras = $total_porcentaje_redes = $total_porcentaje_general = 0;
$contador_estado = $contador_teclado = $contador_mouse = $contador_pantalla = $contador_nobreak = $contador_camaras = $contador_redes = $contador_total = 0;

// Consulta a la tabla del CEDIS actual
$sql = "SELECT * FROM veracruz";
$result = mysqli_query($conn, $sql);

if (!$result) {
    die("Error en la consulta: " . mysqli_error($conn));
}

while ($mostrar = mysqli_fetch_assoc($result)) {
    // Solo contar equipos activos (no dados de baja)
    if ($mostrar['baja_equipo'] === '1') {
        if (is_numeric($mostrar['estado'])) {
            $total_porcentaje_estado += (float) $mostrar['estado'];
            $contador_estado++;
            $total_porcentaje_general += (float) $mostrar['estado'];
            $contador_total++;
        }

        if (is_numeric($mostrar['porcentaje_teclado'])) {
            $total_porcentaje_teclado += (float) $mostrar['porcentaje_teclado'];
            $contador_teclado++;
            $total_porcentaje_general += (float) $mostrar['porcentaje_teclado'];
            $contador_total++;
        }

        if (is_numeric($mostrar['porcentaje_mouse'])) {
            $total_porcentaje_mouse += (float) $mostrar['porcentaje_mouse'];
            $contador_mouse++;
            $total_porcentaje_general += (float) $mostrar['porcentaje_mouse'];
            $contador_total++;
        }

        if (is_numeric($mostrar['porcentaje_pantalla'])) {
            $total_porcentaje_pantalla += (float) $mostrar['porcentaje_pantalla'];
            $contador_pantalla++;
            $total_porcentaje_general += (float) $mostrar['porcentaje_pantalla'];
            $contador_total++;
        }

        if (is_numeric($mostrar['porcentaje_nobreak'])) {
            $total_porcentaje_nobreak += (float) $mostrar['porcentaje_nobreak'];
            $contador_nobreak++;
            $total_porcentaje_general += (float) $mostrar['porcentaje_nobreak'];
            $contador_total++;
        }
    }

    // Solo contar cámaras/redes activos
    if ($mostrar['baja_camaras'] === '1') {
        if (is_numeric($mostrar['porcentaje_camaras'])) {
            $total_porcentaje_camaras += (float) $mostrar['porcentaje_camaras'];
            $contador_camaras++;
            $total_porcentaje_general += (float) $mostrar['porcentaje_camaras'];
            $contador_total++;
        }

        if (is_numeric($mostrar['porcentaje_redes'])) {
            $total_porcentaje_redes += (float) $mostrar['porcentaje_redes'];
            $contador_redes++;
            $total_porcentaje_general += (float) $mostrar['porcentaje_redes'];
            $contador_total++;
        }
    }
}

// Calcular promedio general
$promedio_general = $contador_total > 0 ? number_format($total_porcentaje_general / $contador_total, 2) : "N/A";
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../img/icono2.png" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/dark.css">
    <title>Sistemas Cedis</title>
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
        }

        .table {
            font-size: 14px;
        }

        .table tbody tr:hover {
            background-color: #f5f5f5;
        }

        .table tfoot {
            background-color: #d9edf7;
            font-weight: bold;
        }

        .table {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .table th,
        .table td {
            border: none;
        }

        .table th,
        .table td {
            padding: 15px;
            text-align: center;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f2f2f2;
        }

        .table-responsive {
            max-height: 500px;
            overflow-y: scroll;
        }

        .table thead th {
            position: sticky;
            top: 0;
            z-index: 100;
            background-color: #081856;
            color: white;
        }

        .estado-nueva {
            background-color: rgb(112, 240, 155) !important;
            color: black !important;
            padding: 5px;
            border-radius: 3px;
            text-align: center;
        }

        .estado-regular {
            background-color: rgb(255, 241, 102) !important;
            color: black !important;
            padding: 5px;
            border-radius: 3px;
            text-align: center;
        }

        .estado-no-sirve {
            background-color: rgb(223, 0, 0) !important;
            color: white !important;
            padding: 5px;
            border-radius: 3px;
            text-align: center;
        }

        .sin-valor {
            background-color: white !important;
            color: black !important;
        }

        .table tfoot {
            background-color: #e9ecef;
        }

        #alertSuccess {
            position: fixed;
            /* Fijar en la parte superior */
            top: 100px;
            /* Distancia desde arriba */
            left: 50%;
            /* Centrar horizontalmente */
            transform: translateX(-50%);
            /* Centrado exacto */
            z-index: 1050;
            /* Asegura que esté por encima de otros elementos */
            width: 50%;
            /* Ajusta el ancho */
            text-align: center;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
            /* Sombra para destacar */
        }

        #alertNotification,
        #alertCommentDeleted,
        #alertError {
            position: fixed;
            /* Fijar en la parte superior */
            top: 100px;
            /* Distancia desde arriba */
            left: 50%;
            /* Centrar horizontalmente */
            transform: translateX(-50%);
            /* Centrado exacto */
            z-index: 1050;
            /* Asegura que esté por encima de otros elementos */
            width: 50%;
            /* Ajusta el ancho */
            text-align: center;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
            /* Sombra para destacar */
        }
    </style>
</head>

<!-- Alerta flotante en la parte superior -->
<div id="alertSuccess" class="alert alert-success alert-dismissible fade show" role="alert" style="display: none;">
    Se ha grabado el comentario con éxito.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<!-- Alerta para la notificación vista -->
<div id="alertNotification" class="alert alert-success alert-dismissible fade show" role="alert" style="display: none;">
    Notificación vista exitosamente.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<!-- Alerta para la eliminación de comentario -->
<div id="alertCommentDeleted" class="alert alert-info alert-dismissible fade show" role="alert" style="display: none;">
    Comentario eliminado exitosamente.<br>
    <button id="acceptNotification" class="btn btn-primary">Aceptar</button>
</div>

<!-- Alerta de error -->
<div id="alertError" class="alert alert-danger alert-dismissible fade show" role="alert" style="display: none;">
    Error en la solicitud. Intenta de nuevo.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<body>
    <div style="padding-top: 40px;">
        <header>
            <nav class="navbar navbar-dark bg-dark fixed-top" style="background-color: #081856!important;">
                <div class="container-fluid">
                    <a class="navbar-brand text-white" href="../mostrar/visualizar.php">
                        <img src="../img/loguito2.png" alt="" height="45" class="d-inline-block align-text-top">
                    </a>

                    <?php if ($_SESSION['rol'] === 'TI'): ?>
                        <a class="btn btn-success ml-2" href="../formulario/form_veracruz.php">Añadir</a>
                    <?php endif; ?>

                </div>
            </nav>
        </header>

        <div style="padding-top: 40px;"></div>
        <h1 class="display-6" style="color:black">Cedis Veracruz</h1>

        <!-- Primera tabla -->
        <div class="table-responsive">
            <table class="table table-hover">
                <thead class="thead">
                    <tr>
                        <th>Id</th>
                        <th>Clave</th>
                        <th>AREA</th>
                        <th>TIPO DE EQUIPO</th>
                        <th>MARCA</th>
                        <th>MODELO</th>
                        <th>ESPECIFICACIONES</th>
                        <th>OBSERVACIONES</th>
                        <th>PORCENTAJE EQUIPO</th>
                        <th>TECLADO</th>
                        <th>OBSERVACIONES TECLADO</th>
                        <th>PORCENTAJE TECLADO</th>
                        <th>MOUSE</th>
                        <th>OBSERVACIONES MOUSE</th>
                        <th>PORCENTAJE MOUSE</th>
                        <th>MODIFICAR</th>
                        <th>COMENTARIOS Y OBSERVACIONES</th>
                        <?php if ($_SESSION['rol'] === 'TI'): ?>
                            <th>Eliminar Comentario</th>
                            <th>Dar de baja Registro</th>
                        <?php endif; ?>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if (mysqli_num_rows($result) > 0) {
                        mysqli_data_seek($result, 0); // Reiniciar el puntero del resultado
                        while ($mostrar = mysqli_fetch_assoc($result)) {
                            if ($mostrar['baja_equipo'] !== '1') {
                                continue; // Saltar si el equipo fue dado de baja
                            }
                            // Ya puedes seguir con el resto:
                            $comentario = trim($mostrar['comentarios_y_observaciones']);
                            $notificacion_ti = $mostrar['notificacion_ti'];
                            $isNotificacionActiva = !empty($comentario) && $notificacion_ti == 1;
                            ?>
                            <tr>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['Id']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['clave']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['area']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['equipo']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['marca']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['modelo']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['especificaciones']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['observaciones_equipo']); ?></td>
                                <td class="text-center <?php
                                $porcentaje = $mostrar['estado'];
                                if ($porcentaje === null || $porcentaje === "" || $porcentaje === "NULL") {
                                    // No aplicar ninguna clase si el porcentaje es nulo o "NULL"
                                    echo 'sin-valor';
                                } elseif ($porcentaje >= 80 && $porcentaje <= 100) {
                                    echo 'estado-nueva';
                                } elseif ($porcentaje >= 50 && $porcentaje <= 70) {
                                    echo 'estado-regular';
                                } elseif ($porcentaje >= 0 && $porcentaje <= 40) {
                                    echo 'estado-no-sirve';
                                }
                                ?>">
                                    <?php echo htmlspecialchars($porcentaje); ?>%
                                </td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['teclado']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['observaciones_teclado']); ?></td>
                                <td class="text-center <?php
                                $porcentaje = $mostrar['porcentaje_teclado'];
                                if ($porcentaje === null || $porcentaje === "" || $porcentaje === "NULL") {
                                    // No aplicar ninguna clase si el porcentaje es nulo o "NULL"
                                    echo 'sin-valor';
                                } elseif ($porcentaje >= 80 && $porcentaje <= 100) {
                                    echo 'estado-nueva';
                                } elseif ($porcentaje >= 50 && $porcentaje <= 70) {
                                    echo 'estado-regular';
                                } elseif ($porcentaje >= 0 && $porcentaje <= 40) {
                                    echo 'estado-no-sirve';
                                }
                                ?>">
                                    <?php echo htmlspecialchars($porcentaje !== null ? $porcentaje : ''); ?>%
                                </td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['mouse']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar['observaciones_mouse']); ?></td>
                                <td class="text-center <?php
                                $porcentaje = $mostrar['porcentaje_mouse'];
                                if ($porcentaje === null || $porcentaje === "" || $porcentaje === "NULL") {
                                    // No aplicar ninguna clase si el porcentaje es nulo o "NULL"
                                    echo 'sin-valor';
                                } elseif ($porcentaje >= 80 && $porcentaje <= 100) {
                                    echo 'estado-nueva';
                                } elseif ($porcentaje >= 50 && $porcentaje <= 70) {
                                    echo 'estado-regular';
                                } elseif ($porcentaje >= 0 && $porcentaje <= 40) {
                                    echo 'estado-no-sirve';
                                }
                                ?>">
                                    <?php echo htmlspecialchars($porcentaje); ?>%
                                </td>

                                <td class="text-center icon-cell">
                                    <?php if ($_SESSION['rol'] === 'TI'): ?>
                                        <!-- Enlace para modificar -->
                                        <a href="javascript:void(0);" class="modify-notification"
                                            data-id="<?php echo $mostrar['Id']; ?>"
                                            data-notificacion-vista="<?php echo $isNotificacionActiva; ?>">
                                            <i class="fa fa-pencil-square-o fa-2x"></i>
                                        </a>
                                    <?php else: ?>
                                        <i class="fa fa-pencil-square-o fa-2x text-muted"></i> <!-- Ícono deshabilitado -->
                                    <?php endif; ?>
                                </td>

                                <td class="text-center">
                                    <!-- Mostrar comentarios y observaciones dependiendo del rol -->
                                    <?php if ($_SESSION['rol'] === 'Operador'): ?>
                                        <form method="POST" action="../php/guardar_comentario.php" class="comentario-form">
                                            <input type="hidden" name="id_registro" value="<?php echo $mostrar['Id']; ?>">

                                            <?php
                                            $comentario = trim($mostrar['comentarios_y_observaciones']);
                                            $textareaDisabled = !empty($comentario) ? 'disabled' : '';
                                            $botonDisabled = !empty($comentario) ? 'disabled' : '';
                                            ?>

                                            <!-- Campo de texto -->
                                            <textarea 
                                                name="comentarios" 
                                                rows="2" 
                                                placeholder="Escriba sus Comentarios u Observaciones" 
                                                cols="25" 
                                                <?php echo $textareaDisabled; ?> 
                                                required><?php echo htmlspecialchars($comentario); ?></textarea>
                                            
                                            <!-- Botón guardar -->
                                            <button type="submit" 
                                                class="btn btn-primary btn-sm mt-1 boton-comentario" 
                                                <?php echo $botonDisabled; ?>>Guardar</button>
                                        </form>
                                    <?php else: ?>
                                        <p><?php echo htmlspecialchars($mostrar['comentarios_y_observaciones']); ?></p>
                                    <?php endif; ?>
                                </td>

                                <!-- Botón Eliminar Comentario -->
                                <td class="text-center">
                                    <?php if ($_SESSION['rol'] === 'TI'): ?>
                                        <a href="javascript:void(0);" class="delete-comment" data-id="<?php echo $mostrar['Id']; ?>"
                                            <?php if (!$isNotificacionActiva) echo 'style="pointer-events: none; color: grey;"'; ?>>
                                            <i class="fa fa-minus-square-o fa-2x"></i>
                                        </a>
                                    <?php endif; ?>
                                </td>

                                <!-- Botón Eliminar Registro -->
                                <td class="text-center">
                                    <?php if ($_SESSION['rol'] === 'TI'): ?>
                                        <a href="javascript:void(0);" class="dar-baja-equipo text-danger" data-id="<?php echo $mostrar['Id']; ?>">
                                            <i class="fa fa-trash-o fa-2x"></i>
                                        </a>
                                    <?php endif; ?>
                                </td>
                            </tr>
                            <?php
                        }
                    } else {
                        echo "<tr><td colspan='19' class='text-center'>No hay registros disponibles</td></tr>";
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="2">Promedio Porcentajes</td>
                        <td class="text-center">
                        </td>
                        <td colspan="5">
                        <td class="text-center">
                            <?php echo $contador_estado > 0 ? number_format($total_porcentaje_estado / $contador_estado, 2) . "%" : "N/A"; ?>
                        </td>
                        <td colspan="2"></td>
                        <td class="text-center">
                            <?php echo $contador_teclado > 0 ? number_format($total_porcentaje_teclado / $contador_teclado, 2) . "%" : "N/A"; ?>
                        </td>
                        <td colspan="2"></td>
                        <td class="text-center">
                            <?php echo $contador_mouse > 0 ? number_format($total_porcentaje_mouse / $contador_mouse, 2) . "%" : "N/A"; ?>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <div style="padding-top: 40px;"></div>
        <h1 class="display-6" style="color:black">Cámaras y Redes</h1>

        <!-- Segunda tabla -->
        <div class="table-responsive">
            <table class="table table-hover">
                <thead class="thead">
                    <tr>
                        <th>Id</th>
                        <th>CAMARAS</th>
                        <th>OBSERVACIONES CAMARAS</th>
                        <th>PORCENTAJE CAMARAS</th>
                        <th>REDES</th>
                        <th>OBSERVACIONES REDES</th>
                        <th>PORCENTAJE REDES</th>
                        <th>MODIFICAR</th>
                        <?php if ($_SESSION['rol'] === 'TI'): ?>
                            <th>Dar de baja Registro</th>
                        <?php endif; ?>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        // Mostrar los datos de cámaras y redes
                        mysqli_data_seek($result, 0); // Reiniciar el puntero del resultado
                        while ($mostrar = mysqli_fetch_assoc($result)) {
                            if ($mostrar['baja_camaras'] !== '1') {
                                continue; // Saltar registros dados de baja
                            }
                        ?>
                        <tr>
                            <td class="text-center"><?php echo htmlspecialchars($mostrar['Id']); ?></td>
                            <td class="text-center"><?php echo htmlspecialchars($mostrar['camaras']); ?></td>
                            <td class="text-center"><?php echo htmlspecialchars($mostrar['observaciones_camaras']); ?></td>
                            <td class="text-center <?php
                            $porcentaje = $mostrar['porcentaje_camaras'];
                            if ($porcentaje === null || $porcentaje === "" || $porcentaje === "NULL") {
                                // No aplicar ninguna clase si el porcentaje es nulo o "NULL"
                                echo 'sin-valor';
                            } elseif ($porcentaje >= 80 && $porcentaje <= 100) {
                                echo 'estado-nueva';
                            } elseif ($porcentaje >= 50 && $porcentaje <= 70) {
                                echo 'estado-regular';
                            } elseif ($porcentaje >= 0 && $porcentaje <= 40) {
                                echo 'estado-no-sirve';
                            }
                            ?>">
                                <?php echo htmlspecialchars($porcentaje); ?>%
                            </td>
                            <td class="text-center"><?php echo htmlspecialchars($mostrar['redes']); ?></td>
                            <td class="text-center"><?php echo htmlspecialchars($mostrar['observaciones_redes']); ?></td>
                            <td class="text-center <?php
                            $porcentaje = $mostrar['porcentaje_redes'];
                            if ($porcentaje === null || $porcentaje === "" || $porcentaje === "NULL") {
                                // No aplicar ninguna clase si el porcentaje es nulo o "NULL"
                                echo 'sin-valor';
                            } elseif ($porcentaje >= 80 && $porcentaje <= 100) {
                                echo 'estado-nueva';
                            } elseif ($porcentaje >= 50 && $porcentaje <= 70) {
                                echo 'estado-regular';
                            } elseif ($porcentaje >= 0 && $porcentaje <= 40) {
                                echo 'estado-no-sirve';
                            }
                            ?>">
                                <?php echo htmlspecialchars($porcentaje); ?>%
                            </td>
                            <td class="text-center icon-cell">
                                <?php if ($_SESSION['rol'] === 'TI'): ?>
                                    <a href="../modificar/modificarVeracruz2.php?id=<?php echo $mostrar['Id']; ?>">
                                        <i class="fa fa-pencil-square-o fa-2x"></i>
                                    </a>
                                <?php else: ?>
                                    <i class="fa fa-pencil-square-o fa-2x text-muted"></i> <!-- Ícono deshabilitado -->
                                <?php endif; ?>
                            </td>
                            <!-- Botón Eliminar Registro -->
                            <td class="text-center">
                                <?php if ($_SESSION['rol'] === 'TI'): ?>
                                    <a href="javascript:void(0);" class="dar-baja-camaras-redes text-warning" data-id="<?php echo $mostrar['Id']; ?>">
                                        <i class="fa fa-trash-o fa-2x"></i>
                                    </a>
                                <?php endif; ?>
                            </td>
                        </tr>
                        <?php
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3">Promedio Porcentajes</td>
                        <td class="text-center">
                            <?php echo $contador_camaras > 0 ? number_format($total_porcentaje_camaras / $contador_camaras, 2) . "%" : "N/A"; ?>
                        </td>
                        <td colspan="2"></td>
                        <td class="text-center">
                            <?php echo $contador_redes > 0 ? number_format($total_porcentaje_redes / $contador_redes, 2) . "%" : "N/A"; ?>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <div class="container text-center mt-4">
            <h4>Porcentaje General Promedio: <?php echo $promedio_general; ?>%</h4>
        </div>
    </div><br><br><br>

</body>

<!-- <script>
    // Bloquear clic derecho y teclas específicas
    $(document).ready(function () {
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
</script> -->

<!-- SCRIPT PARA MOSTRAR ALERTA DE GUARDADO EN COMENTARIOS Y OBSERVACIONES ROL OPERADOR -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelectorAll(".comentario-form").forEach(function (form) {
            const textarea = form.querySelector("textarea");
            const boton = form.querySelector(".boton-comentario");

            // Manejar el envío del formulario
            form.addEventListener("submit", function (event) {
                event.preventDefault(); // Evitar recarga de página

                const formData = new FormData(this);

                // Deshabilitar el botón para evitar múltiples envíos
                boton.disabled = true;

                // Enviar datos con Fetch
                fetch(this.action, {
                    method: "POST",
                    body: formData,
                })
                    .then(response => response.text()) // Cambiar a .json() si el servidor devuelve JSON
                    .then(data => {
                        // Si el comentario se guarda correctamente
                        mostrarAlerta(); // Mostrar alerta de éxito
                        
                        // Bloquear el textarea y el botón después del guardado exitoso
                        textarea.disabled = true;
                        boton.disabled = true;
                    })
                    .catch(error => {
                        console.error("Error al guardar:", error);
                        // Habilitar el botón en caso de error
                        boton.disabled = false;
                    });
            });

            // Habilitar/deshabilitar el botón según el contenido del textarea
            textarea.addEventListener("input", function () {
                if (textarea.value.trim() === "") {
                    boton.disabled = true;
                } else {
                    boton.disabled = false;
                }
            });
        });

        // Mostrar la alerta de éxito
        function mostrarAlerta() {
            let alerta = document.getElementById("alertSuccess");
            alerta.style.display = "block"; // Mostrar la alerta

            // Ocultar la alerta después de 5 segundos
            setTimeout(function () {
                alerta.style.display = "none";
            }, 5000);
        }
    });
</script>


<!-- SCRIPT PARA VISUALIZAR NOTIFICACION Y ELIMINAR COMENTARIOS CON ROL TI -->
<script>
    $(document).ready(function () {
        // Al hacer clic en el ícono de "modificar notificación"
        $('.modify-notification').click(function () {
            var id = $(this).data('id'); // Obtener el ID del registro

            // Hacer una solicitud AJAX para actualizar el estado de la notificación
            $.ajax({
                url: '../php/update_notification_status.php', // El archivo PHP que maneja la actualización
                type: 'POST',
                data: { id: id }, // Enviar el ID del registro
                success: function (response) {
                    var data = JSON.parse(response);
                    console.log(data); // Verifica la respuesta del servidor en la consola
                    if (data.success) {
                        window.location.href = "../modificar/modificarVeracruz.php?id=" + id;
                    } else {
                        alert("Error al actualizar la notificación");
                    }
                },
                error: function () {
                    alert('Error en la solicitud.');
                }
            });
        });

        // Manejador para el botón "Aceptar" de la alerta de "Comentario eliminado"
        $('#acceptNotification').click(function () {
            $('#alertCommentDeleted').fadeOut(); // Ocultar la alerta de comentario eliminado
            window.location.href = window.location.href; // Redirigir a la página actual
        });

        // Al hacer clic en el ícono de "eliminar comentario"
        $('.delete-comment').click(function () {
            var id = $(this).data('id');
            var $button = $(this); // Guardamos una referencia al botón (ícono)

            // Hacer una solicitud AJAX para eliminar el comentario
            $.ajax({
                url: '../php/update_delete_comment.php', // URL de tu archivo PHP
                type: 'POST', // Método POST
                data: { id: id }, // Enviar el ID del registro
                success: function (response) {
                    var data = JSON.parse(response);

                    if (data.success) {
                        // Si la eliminación fue exitosa, cambiar el ícono o actualiza la UI
                        $('#alertCommentDeleted').fadeIn(); // Mostrar alerta de comentario eliminado

                        // Opcionalmente, puedes borrar el comentario de la vista:
                        var $commentCell = $button.closest('tr').find('.comment-cell'); // Asegúrate de tener la clase adecuada
                        $commentCell.text('Comentario eliminado'); // O poner cualquier otro mensaje
                    } else {
                        $('#alertError').text(data.error).fadeIn(); // Mostrar alerta de error con el mensaje retornado
                        ocultarAlerta('alertError');
                    }
                },
                error: function () {
                    $('#alertError').text('Error en la solicitud.').fadeIn(); // Mostrar alerta de error
                    ocultarAlerta('alertError');
                }
            });
        });

        // Función para ocultar la alerta después de 5 segundos
        function ocultarAlerta(alertId) {
            setTimeout(function () {
                $('#' + alertId).fadeOut(); // Ocultar la alerta con fadeOut después de 5 segundos
            }, 5000);
        }

        // Asegurarse de que el botón de eliminar comentario esté habilitado al regresar a cedisCancun.php
        $('.delete-comment').each(function () {
            var $button = $(this);
            var commentStatus = $button.closest('tr').find('.comment-status').text(); // Asume que tienes alguna clase para ver si el comentario está eliminado

            if (commentStatus === 'Comentario eliminado') {
                // No hacer nada, ya está deshabilitado
                return;
            } else {
                // Asegurarse de que el botón esté habilitado
                $button.css('pointer-events', 'auto'); // Habilitar clic
                $button.css('color', ''); // Restaurar el color
            }
        });

        // Manejar el botón "Cerrar" de las alertas
        $('.btn-close').click(function () {
            $(this).closest('.alert').fadeOut(); // Cerrar la alerta que contiene el botón de cierre
        });
    });
</script>

<script>
    $(document).ready(function () {
        // Dar de baja equipo principal
        $('.dar-baja-equipo').on('click', function () {
            const id = $(this).data('id');
            if (confirm("¿Seguro que deseas dar de baja este equipo?")) {
                $.get('../php/dar_de_baja_equipo.php', { id: id }, function (response) {
                    alert(response);
                    location.reload();
                });
            }
        });

        // Dar de baja cámaras/redes
        $('.dar-baja-camaras-redes').on('click', function () {
            const id = $(this).data('id');
            if (confirm("¿Seguro que deseas dar de baja cámaras/redes para este equipo?")) {
                $.get('../php/dar_de_baja_camaras_redes.php', { id: id }, function (response) {
                    alert(response);
                    location.reload();
                });
            }
        });
    });
</script>

<?php include '../css/footer.php'; ?>

</html>

<?php
// Cerrar la conexión
mysqli_close($conn);
?>