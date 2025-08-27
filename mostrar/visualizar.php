<?php
session_name('Cedis'); // Asegurar el mismo nombre de sesión
session_start();
require("../php/connect.php");

$conn = connectMysqli(); // Conexión a la BD

// Verifica si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    header("Location: ./inicioSesion.php");
    exit();
}

$user_id = $_SESSION['user_id'];

// Obtener datos del usuario
$sql = "SELECT usuario, rol, cedis FROM usuarios WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();
$stmt->close();

// Definir variables del usuario
$usuario_cedis = $user['cedis'] ?? null;
$usuario_rol = $user['rol'] ?? null;

// ** Definir si es CEDIS SUR o NORTE **
$cedis_sur = ['Pachuca', 'Cancun', 'Merida', 'Oaxaca', 'Cuernavaca', 'Villahermosa', 'Puebla', 'Tuxtla', 'Veracruz', 'Cordoba'];
$cedis_norte = ['Culiacán', 'León', 'Querétaro', 'San_Luis', 'Monterrey', 'Chihuahua', 'Hermosillo', 'Guadalajara'];

if ($usuario_rol == 'TI') {
    $titulo_cedis = "CEDIS - SUR & NORTE";
} elseif (in_array($usuario_cedis, $cedis_sur)) {
    $titulo_cedis = "CEDIS - SUR";
} elseif (in_array($usuario_cedis, $cedis_norte)) {
    $titulo_cedis = "CEDIS - NORTE";
} else {
    $titulo_cedis = "CEDIS - DESCONOCIDO";
}

// Función para contar los comentarios pendientes de notificación
function contarComentariosPendientes($cedis, $conn)
{
    // Construimos el nombre de la tabla dinámicamente según el CEDIS
    $tabla_comentarios = $cedis; // La tabla tiene el mismo nombre que el CEDIS, como 'pachuca', 'cancun', etc.

    // Consulta SQL para contar los comentarios con notificacion_ti = 1
    $sql = "SELECT COUNT(*) AS total_comentarios FROM $tabla_comentarios WHERE notificacion_ti = 1";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();

    // Retornar la cantidad de comentarios pendientes
    return $row['total_comentarios'];
}
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../img/icono2.png" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/dark.css">
    <title>Sistemas Cedis</title>
    <style>
        .nav-link {
            color: ;
        }

        .card-body {
            position: relative;
            z-index: 1;
        }

        .card-body::after {
            content: '';
            /* Eliminamos el contenido de Font Awesome */
            position: absolute;
            top: -30%;
            right: -90px;
            transform: translateY(-10%);
            width: 18rem;
            /* Ajusta el ancho de la imagen */
            height: 18rem;
            /* Ajusta el alto de la imagen */
            z-index: 0;
        }

        /* CEDIS SUR - CARLOS */

        /* Fondo para Hidalgo */
        .hidalgo-card .card-body::after {
            background-image: url('../img/hidalgo.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Cancún */
        .cancun-card .card-body::after {
            background-image: url('../img/cancun1.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Mérida */
        .merida-card .card-body::after {
            background-image: url('../img/merida.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para la primera tarjeta */
        .oaxaca-card .card-body::after {
            background-image: url('../img/oaxaca.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para la segunda tarjeta */
        .cuernavaca-card .card-body::after {
            background-image: url('../img/cuernavaca.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para la tercera tarjeta */
        .villahermosa-card .card-body::after {
            background-image: url('../img/villahermosa.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Puebla */
        .puebla-card .card-body::after {
            background-image: url('../img/puebla.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Tuxtla */
        .tuxtla-card .card-body::after {
            background-image: url('../img/tuxtla.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Veracruz */
        .veracruz-card .card-body::after {
            background-image: url('../img/veracruz.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Cordoba */
        .cordoba-card .card-body::after {
            background-image: url('../img/cordoba.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.8;
        }

        /* CEDIS NORTE - MISAEL */

        /* Fondo para Culiacan */
        .culiacan-card .card-body::after {
            background-image: url('../img/culiacan.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Leon */
        .leon-card .card-body::after {
            background-image: url('../img/leon.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Queretaro */
        .queretaro-card .card-body::after {
            background-image: url('../img/queretaro.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para San Luis Potosí */
        .san_luis-card .card-body::after {
            background-image: url('../img/san_luis.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Monterrey */
        .monterrey-card .card-body::after {
            background-image: url('../img/monterrey.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Chihuahua */
        .chihuahua-card .card-body::after {
            background-image: url('../img/chihuahua.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Hermosillo */
        .hermosillo-card .card-body::after {
            background-image: url('../img/hermosillo.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }

        /* Fondo para Guadalajara */
        .guadalajara-card .card-body::after {
            background-image: url('../img/guadalajara.png');
            background-size: 35%;
            /* Ajusta el tamaño de la imagen */
            background-repeat: no-repeat;
            background-position: center;
            opacity: 0.5;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-dark bg-dark fixed-top" style="background-color: #081856!important;">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="../php/principal.php">
                <img src="../img/loguito2.png" alt="" height="45" class="d-inline-block align-text-top">
            </a>
        </div>
    </nav>

    <body style="padding-top: 40px;"></body>

    <main class="main-content" id="mainContent">
        <!-- CEDIS CARLOS -->
        <div class="container mt-5">
            <h1 class="display-6"><?= $titulo_cedis ?></h1>
            <div class="row">

                <?php
                // Verifica si hay comentarios para el CEDIS y cuenta el total
                $comentarios_pendientes_pachuca = contarComentariosPendientes('Pachuca', $conn);
                $comentarios_pendientes_cancun = contarComentariosPendientes('Cancun', $conn);
                $comentarios_pendientes_merida = contarComentariosPendientes('Merida', $conn);
                $comentarios_pendientes_oaxaca = contarComentariosPendientes('Oaxaca', $conn);
                $comentarios_pendientes_cuernavaca = contarComentariosPendientes('Cuernavaca', $conn);
                $comentarios_pendientes_villahermosa = contarComentariosPendientes('Villahermosa', $conn);
                $comentarios_pendientes_puebla = contarComentariosPendientes('Puebla', $conn);
                $comentarios_pendientes_tuxtla = contarComentariosPendientes('Tuxtla', $conn);
                $comentarios_pendientes_veracruz = contarComentariosPendientes('Veracruz', $conn);
                $comentarios_pendientes_cordoba = contarComentariosPendientes('Cordoba', $conn);
                $comentarios_pendientes_culiacan = contarComentariosPendientes('Culiacan', $conn);
                $comentarios_pendientes_leon = contarComentariosPendientes('Leon', $conn);
                $comentarios_pendientes_queretaro = contarComentariosPendientes('Queretaro', $conn);
                $comentarios_pendientes_san_luis = contarComentariosPendientes('San_Luis', $conn);
                $comentarios_pendientes_monterrey = contarComentariosPendientes('Monterrey', $conn);
                $comentarios_pendientes_chihuahua = contarComentariosPendientes('Chihuahua', $conn);
                $comentarios_pendientes_hermosillo = contarComentariosPendientes('Hermosillo', $conn);
                $comentarios_pendientes_guadalajara = contarComentariosPendientes('Guadalajara', $conn);
                ?>

                <?php if ($usuario_rol == 'TI' || in_array($usuario_cedis, $cedis_sur)): ?>
                    <!-- Mostrar solo si el usuario es TI o pertenece al CEDIS correspondiente -->
                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Pachuca'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-primary hidalgo-card h-100 <?= $comentarios_pendientes_pachuca > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_pachuca > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.9rem;">
                                            <?= $comentarios_pendientes_pachuca ?>
                                        </div>
                                    <?php endif; ?>

                                    <h5 class="card-title">Pachuca</h5>
                                    <p class="card-text">Ver tabla de estadísticas CEDIS Pachuca</p>
                                    <a href="cedisPachuca.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>


                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Cancun'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-secondary cancun-card h-100 <?= $comentarios_pendientes_cancun > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_cancun > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_cancun ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Cancun</h5>
                                    <p class="card-text">Ver tabla de estadísticas CEDIS Cancun</p>
                                    <a href="cedisCancun.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Merida'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-success merida-card h-100 <?= $comentarios_pendientes_merida > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_merida > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_merida ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Merida</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Merida</p>
                                    <a href="cedisMerida.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Oaxaca'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-danger oaxaca-card h-100 <?= $comentarios_pendientes_oaxaca > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_oaxaca > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_oaxaca ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Oaxaca</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Oaxaca</p>
                                    <a href="cedisOaxaca.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>

                <div class="row">
                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Cuernavaca'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-warning cuernavaca-card h-100 <?= $comentarios_pendientes_cuernavaca > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_cuernavaca > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_cuernavaca ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Cuernavaca</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Cuernavaca</p>
                                    <a href="cedisCuernavaca.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Villahermosa'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-info villahermosa-card h-100 <?= $comentarios_pendientes_villahermosa > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_villahermosa > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_villahermosa ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Villahermosa</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Villahermosa</p>
                                    <a href="cedisVillahermosa.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Puebla'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-primary puebla-card h-100 <?= $comentarios_pendientes_puebla > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_puebla > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_puebla ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Puebla</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Puebla</p>
                                    <a href="cedisPuebla.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Tuxtla'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-success tuxtla-card h-100 <?= $comentarios_pendientes_tuxtla > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_tuxtla > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_tuxtla ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Tuxtla</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Tuxtla</p>
                                    <a href="cedisTuxtla.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="row">
                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Veracruz'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-primary veracruz-card h-100 <?= $comentarios_pendientes_veracruz > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_veracruz > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_veracruz ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Veracruz</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Veracrúz</p>
                                    <a href="cedisVeracruz.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Cordoba'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-danger cordoba-card h-100 <?= $comentarios_pendientes_cordoba > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_cordoba > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_cordoba ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Cordoba</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Cordoba</p>
                                    <a href="cedisCordoba.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>

        <?php endif; ?>

        <!-- CEDIS MISAEL -->
        <div class="container mt-5">
            <div class="row">

                <?php if ($usuario_rol == 'TI' || in_array($usuario_cedis, $cedis_norte)): ?>
                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Culiacán'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-warning culiacan-card h-100 <?= $comentarios_pendientes_culiacan > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_culiacan > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_culiacan ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Culiacán</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Culiacán</p>
                                    <a href="cedisCuliacan.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'León'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-info leon-card h-100 <?= $comentarios_pendientes_leon > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_leon > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_leon ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">León</h5>
                                    <p class="card-text">Ver tabla de estadísticas CEDIS León</p>
                                    <a href="cedisLeon.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Querétaro'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-primary queretaro-card h-100 <?= $comentarios_pendientes_queretaro > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_queretaro > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_queretaro ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Querétaro</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Querétaro</p>
                                    <a href="cedisQueretaro.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'San_Luis'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-secondary san_luis-card h-100 <?= $comentarios_pendientes_san_luis > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_san_luis > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_san_luis ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">San Luis Potosí</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis San Luis Potosí</p>
                                    <a href="cedisSanLuis.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="row">
                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Monterrey'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-danger monterrey-card h-100 <?= $comentarios_pendientes_monterrey > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_monterrey > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_monterrey ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Monterrey</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Monterrey</p>
                                    <a href="cedisMonterrey.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Chihuahua'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-success chihuahua-card h-100 <?= $comentarios_pendientes_chihuahua > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_chihuahua > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_chihuahua ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Chihuahua</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Chihuahua</p>
                                    <a href="cedisChihuahua.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Hermosillo'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-warning hermosillo-card h-100 <?= $comentarios_pendientes_hermosillo > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_hermosillo > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_hermosillo ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Hermosillo</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Hermosillo</p>
                                    <a href="cedisHermosillo.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if ($usuario_rol == 'TI' || $usuario_cedis == 'Guadalajara'): ?>
                        <div class="col-12 col-md-6 col-lg-3 mb-3">
                            <div
                                class="card text-white bg-info guadalajara-card h-100 <?= $comentarios_pendientes_guadalajara > 0 ? 'border border-warning' : '' ?>">
                                <div class="card-body position-relative">
                                    <!-- Notificación en la esquina superior derecha -->
                                    <?php if ($comentarios_pendientes_guadalajara > 0): ?>
                                        <div class="position-absolute top-0 end-0 p-2 bg-danger text-white rounded-circle"
                                            style="font-size: 0.8rem;">
                                            <?= $comentarios_pendientes_guadalajara ?>
                                        </div>
                                    <?php endif; ?>
                                    <h5 class="card-title">Guadalajara</h5>
                                    <p class="card-text">Ver tabla de estadisticas Cedis Guadalajara</p>
                                    <a href="cedisGuadalajara.php" class="btn btn-light">Ver detalles</a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>

        <?php endif; ?>
    </main><br><br><br><br>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>

    <script>

    </script>

    <?php include '../css/footer.php'; ?>

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

</html>