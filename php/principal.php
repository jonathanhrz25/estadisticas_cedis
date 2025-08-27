<?php
session_name('Cedis'); // Debe ser el mismo nombre de sesión
session_start();

if (!isset($_SESSION['user_id'])) {
    // Si no hay sesión activa, redirige a la página de inicio de sesión
    header("Location: ./inicioSesion.php");
    exit();
}

// Si la sesión está activa, puedes mostrar el contenido de la página
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../img/icono2.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/dark.css">
    <title>Sistemas Menú</title>
    <style>
        .nav-link {
            color: ;
        }

        .card-body {
            position: relative;
            z-index: 1;
        }

        .card-body::after {
            content: '\f00c';
            /* Icono por defecto */
            font-family: 'Font Awesome 5 Free';
            font-weight: 900;
            position: absolute;
            top: 5%;
            right: 60px;
            transform: translateY(-10%);
            font-size: 7rem;
            color: rgba(255, 255, 255, 0.3);
            /* Color blanco con baja opacidad */
            z-index: 0;
        }

        .bg-primary .card-body::after {
            content: '\f1c0';
            /* Todos los equipos */
        }

        .bg-danger .card-body::after {
            content: '\f080';
            /* Graficas */
        }
    </style>
</head>

<body>
    <div id="entradaAnimacion"
        style="position:fixed; top:0; left:0; width:100%; height:100%; background:white; display:flex; align-items:center; justify-content:center; z-index:9999;">
        <lottie-player src="https://assets1.lottiefiles.com/packages/lf20_49rdyysj.json" background="transparent"
            speed="1" style="width: 350px; height: 350px;" autoplay>
        </lottie-player>
    </div>

    <nav class="navbar navbar-dark bg-dark fixed-top" style="background-color: #081856!important;">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="principal.php">
                <img src="../img/loguito2.png" alt="" height="45" class="d-inline-block align-text-top">
            </a>

            <!-- Texto de bienvenida visible solo en pantallas medianas y grandes -->
            <div class="welcome-text text-white d-none d-md-block">
                Bienvenido de nuevo <?php echo $_SESSION['usuario']; ?>
            </div>

            <!-- Botón de menú desplegable con el icono de usuario -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <i class="fas fa-user-circle fa-2x"></i> <!-- Ícono de usuario -->
            </button>

            <!-- Offcanvas para menú lateral -->
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                aria-labelledby="offcanvasNavbarLabel" style="background-color: #081856!important;">
                <div class="offcanvas-header">
                    <!-- Nombre del usuario en la cabecera del menú lateral -->
                    <span class="text-white font-size-lg">
                        <?php echo $_SESSION['usuario']; ?>
                    </span>
                    <button type="button" class="btn-close btn-lg" style="background-color: white"
                        data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav mr-auto">
                        <!-- Opción para cerrar sesión dentro del menú lateral -->
                        <li class="nav-item">
                            <a class="nav-link text-white" href="cerrarSesion.php">Cerrar Sesión</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <body style="padding-top: 70px;"></body>

    <main class="main-content" id="mainContent">
        <div class="container mt-5">
            <!-- Primera fila de 3 botones -->
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6 mb-3">
                    <div class="card text-white bg-primary h-100">
                        <div class="card-body">
                            <h5 class="card-title">Todos los equipos</h5>
                            <p class="card-text">Ver estadistíca general de equipos cedis</p>
                            <a href="../mostrar/visualizar.php" class="btn btn-light">Ver...</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6 mb-3">
                    <div class="card text-white bg-danger h-100">
                        <div class="card-body">
                            <h5 class="card-title">Gráficas</h5>
                            <p class="card-text">Gráficas de Porcentajes</p>
                            <a href="../mostrar/grafica.php" class="btn btn-light">Ver...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div><br><br><br><br>
    </main>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>

    <script>
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
    </script>

    <script>
        window.addEventListener("DOMContentLoaded", () => {
            const hasVisited = sessionStorage.getItem('hasVisited');

            const anim = document.getElementById("entradaAnimacion");

            if (!hasVisited) {
                // Primera visita
                sessionStorage.setItem('hasVisited', 'true');
                setTimeout(() => {
                    if (anim) anim.style.display = "none";
                }, 1000); // Puedes ajustar la duración
            } else {
                // Ya ha visitado antes en esta sesión
                if (anim) anim.style.display = "none";
            }
        });
    </script>

    <?php include '../css/footer.php'; ?>

</body>

</html>