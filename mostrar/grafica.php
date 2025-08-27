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

// Recuperamos el rol del usuario y el Cedis (si es necesario)
$rol_usuario = $_SESSION['rol']; // Aquí ya está el rol, si es necesario

// Lista de tablas (CEDIS)
$tablas = [
    "Cancun",
    "Chihuahua",
    //"Cordoba",
    "Cuernavaca",
    "Culiacan",
    "Guadalajara",
    "Hermosillo",
    "Leon",
    "Merida",
    "Monterrey",
    "Oaxaca",
    "Pachuca",
    "Puebla",
    "Queretaro",
    "San_Luis",
    "Tuxtla",
    "Veracruz",
    "Villahermosa"
];

$datos = array();

// Si el rol del usuario es "Operador", solo mostrar la tabla correspondiente al Cedis asignado
if ($rol_usuario == "Operador") {
    // Verifica si el CEDIS está presente en la sesión para los usuarios "Operador"
    if (!isset($_SESSION['cedis'])) {
        echo "Error: No se ha asignado un cedis al usuario. Por favor, inicia sesión de nuevo.";
        exit();
    }

    $cedis_usuario = $_SESSION['cedis']; // Tomamos el valor de Cedis de la sesión

    // Ejecutar la consulta para el Cedis específico del usuario
    $sql = "SELECT 
                estado, porcentaje_teclado, porcentaje_mouse, porcentaje_pantalla, 
                porcentaje_nobreak, porcentaje_camaras, porcentaje_redes
            FROM $cedis_usuario";  // Usamos el Cedis del usuario logueado

    $result = $conn->query($sql);

    $suma_total = 0;
    $total_valores = 0;

    while ($row = $result->fetch_assoc()) {
        foreach ($row as $valor) {
            if (!is_null($valor) && $valor !== '') {
                $suma_total += floatval($valor);
                $total_valores++;
            }
        }
    }

    // Calcular el promedio
    if ($total_valores > 0) {
        $porcentaje_promedio = $suma_total / $total_valores;
    } else {
        $porcentaje_promedio = 0; // Si no hay valores, el promedio es 0
    }

    $datos[] = [$cedis_usuario, $porcentaje_promedio];

} else {
    // Si el rol del usuario es TI, mostrar todas las tablas
    foreach ($tablas as $tabla) {
        $sql = "SELECT 
                    estado, porcentaje_teclado, porcentaje_mouse, porcentaje_pantalla, 
                    porcentaje_nobreak, porcentaje_camaras, porcentaje_redes
                FROM $tabla";
        $result = $conn->query($sql);

        $suma_total = 0;
        $total_valores = 0;

        while ($row = $result->fetch_assoc()) {
            foreach ($row as $valor) {
                if (!is_null($valor) && $valor !== '') {
                    $suma_total += floatval($valor);
                    $total_valores++;
                }
            }
        }

        // Calcular el promedio
        if ($total_valores > 0) {
            $porcentaje_promedio = $suma_total / $total_valores;
        } else {
            $porcentaje_promedio = 0; // Si no hay valores, el promedio es 0
        }

        $datos[] = [$tabla, $porcentaje_promedio];
    }
}

// Convierte los datos a formato JSON para usarlos en JavaScript
$datos_json = json_encode($datos);
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../img/icono2.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/dark.css">
    <title>Grafica</title>
    <style>
        .chart-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 50px;
        }

        .legend-container {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-top: 50px;
        }

        .legend-item {
            display: flex;
            align-items: center;
            margin-bottom: 8px;
            cursor: pointer;
        }

        .legend-color {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        .legend-text {
            font-size: 20px;
            color: black;
            /* Cambia el color del texto en la leyenda a negro */
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            cursor: pointer;
            max-width: 150px;
        }

        .legend-text.expanded {
            white-space: normal;
            max-width: none;
        }

        /* Tooltip personalizado */
        .google-visualization-tooltip {
            color: black;
            /* Cambia el color del texto en los tooltips a negro */
        }

        @media (min-width: 768px) {
            .chart-container {
                flex-direction: row;
                justify-content: center;
            }

            .legend-container {
                margin-left: 20px;
                margin-top: 0;
            }

            .legend-text {
                max-width: none;
                cursor: default;
            }
        }

        .hAxis-label {
            cursor: pointer;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 100px;
        }

        .hAxis-label.expanded {
            white-space: normal;
            max-width: none;
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

    <div class="col-md-12 mx-auto chart-container">
        <!-- Contenedor para la gráfica -->
        <div id="ColumnChart_3d" style="width: 60%; height: 900px;"></div>

        <!-- Contenedor para la leyenda -->
        <div id="legend_div" class="legend-container">
            <!-- El contenido de la leyenda se generará dinámicamente desde JavaScript -->
        </div>
    </div>

    <script>
        google.charts.load("current", { packages: ["corechart", "bar"] });
        google.charts.setOnLoadCallback(drawChart);

        var colors = ['#3366cc', '#dc3912', '#ff9900', '#109618', '#990099', '#0099c6', '#dd4477', '#66aa00', '#b82e2e', '#316395', '#994499', '#22aa99', '#aaaa11', '#6633cc', '#e67300', '#8b0707'];

        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Cedis');
            data.addColumn('number', 'Porcentaje Promedio');
            data.addColumn({ type: 'string', role: 'tooltip', 'p': { 'html': true } });
            data.addColumn({ type: 'string', role: 'style' });

            // Cargar los datos desde PHP
            var rawData = <?php echo $datos_json; ?>;

            // Ordenar los datos de mayor a menor porcentaje
            rawData.sort(function (a, b) {
                return b[1] - a[1];
            });

            var legendHtml = '';

            rawData.forEach(function (row, index) {
                var porcentaje = parseFloat(row[1]) || 0;
                var tooltip = '<div style="padding:5px;"><strong>' + row[0] + '</strong><br>Porcentaje: ' + porcentaje.toFixed(2) + '%</div>';
                data.addRow([row[0], porcentaje, tooltip, 'color: ' + colors[index % colors.length]]);

                // Generar el HTML para la leyenda
                legendHtml += '<div class="legend-item">';
                legendHtml += '<div class="legend-color" style="background-color: ' + colors[index % colors.length] + ';"></div>';
                legendHtml += '<div class="legend-text">' + row[0] + ' - ' + porcentaje.toFixed(2) + '%</div>';
                legendHtml += '</div>';
            });

            // Insertar la leyenda generada en el div correspondiente
            document.getElementById('legend_div').innerHTML = legendHtml;

            var options = {
                title: 'Porcentajes Generales Promedio por Ubicación',
                chartArea: { width: '60%' },
                hAxis: {
                    title: 'Porcentaje Promedio',
                    minValue: 0
                },
                vAxis: {
                    title: 'Cedis'
                },
                legend: 'none',
                bars: 'horizontal',
                tooltip: { isHtml: true }
            };

            var chart = new google.visualization.BarChart(document.getElementById('ColumnChart_3d'));

            chart.draw(data, options);
        }
    </script>

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

    </main>
</body>

<?php include '../css/footer.php'; ?>

</html>