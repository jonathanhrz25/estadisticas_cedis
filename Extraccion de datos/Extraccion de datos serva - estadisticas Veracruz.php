<?php
session_name('Cedis'); // Debe ser el mismo nombre de sesión
session_start();
require("../php/connect.php");
require("../php/connect_inventario.php");

// Verifica si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    // Si no hay sesión activa, redirige a la página de inicio de sesión
    header("Location: ./inicioSesion.php");
    exit();
}

// Conexión utilizando MySQLi para la tabla veracruz
$conn = connectMysqli();

// Verificar si la conexión es válida
if (!$conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Listado de las tablas que vamos a consultar
$tables = ['form_pc', 'form_monitor', 'form_impresora', 'form_hh', 'form_pantalla', 'form_laptop', 'form_nobreak', 'form_switch_aps', 'form_dde', 'form_lectorcb'];

foreach ($tables as $table) {
    try {
        // Verificar si la columna 'especificaciones' existe en la tabla
        $query = $pdo_serva->prepare("DESCRIBE $table");
        $query->execute();
        $columns = $query->fetchAll(PDO::FETCH_COLUMN);

        // Si la columna 'especificaciones' existe, incluirla en la consulta
        if (in_array('especificaciones', $columns)) {
            $sql = "SELECT Id, clave, area, equipo, marca, modelo, especificaciones FROM $table WHERE clave LIKE 'VE%'";
        } else {
            // Si no existe, omitirla
            $sql = "SELECT Id, clave, area, equipo, marca, modelo FROM $table WHERE clave LIKE 'VE%'";
        }

        $stmt = $pdo_serva->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Insertar o actualizar los datos en la tabla veracruz
        foreach ($result as $row) {
            $clave = $row['clave'];
            $area = $row['area'];
            $equipo = $row['equipo'];
            $marca = $row['marca'];
            $modelo = $row['modelo'];
            $especificaciones = isset($row['especificaciones']) ? $row['especificaciones'] : null;

            // Verificar si la clave ya existe en la tabla veracruz
            $sql_check = "SELECT Id FROM veracruz WHERE clave = '$clave'";
            $result_check = mysqli_query($conn, $sql_check);

            if (mysqli_num_rows($result_check) > 0) {
                // Si existe, actualizar el registro
                $sql_update = "UPDATE veracruz SET 
                    area = '$area',
                    equipo = '$equipo',
                    marca = '$marca',
                    modelo = '$modelo'" .
                    ($especificaciones !== null ? ", especificaciones = '$especificaciones'" : "") .
                    " WHERE clave = '$clave'";

                if (!mysqli_query($conn, $sql_update)) {
                    echo "Error al actualizar el registro en veracruz para la tabla $table: " . mysqli_error($conn);
                }
            } else {
                // Si no existe, insertar un nuevo registro
                $sql_insert = "INSERT INTO veracruz (clave, area, equipo, marca, modelo" .
                    ($especificaciones !== null ? ", especificaciones" : "") .
                    ") VALUES ('$clave', '$area', '$equipo', '$marca', '$modelo'" .
                    ($especificaciones !== null ? ", '$especificaciones'" : "") . ")";
                    
                if (!mysqli_query($conn, $sql_insert)) {
                    echo "Error al insertar el registro en veracruz para la tabla $table: " . mysqli_error($conn);
                }
            }
        }

    } catch (PDOException $e) {
        // Mostrar un mensaje si la tabla no existe, pero continuar con las demás
        echo "La tabla $table no existe o no se pudo consultar: " . $e->getMessage() . "<br>";
    }
}

echo "Datos guardados exitosamente en la tabla veracruz.";
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/dark.css">
    <title>Sistemas Cedis</title>
    <style>
        .table-responsive {
            overflow-x: auto;
        }
        /* Estilos para el estado de los equipos */
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
        .table thead {
            background-color: #081856;
            color: white;
        }
        .table tfoot {
            background-color: #e9ecef;
            font-weight: bold;
        }
        .thead th {
            color: white;
            font-family: "Segoe IU", serif;
            font-size: 120%;
            text-align: center;
        }
    </style>
</head>
<body>
    <div style="padding-top: 40px;">
        <header>
            <nav class="navbar navbar-dark bg-dark fixed-top" style="background-color: #081856!important;">
                <div class="container-fluid">
                    <a class="navbar-brand text-white" href="../mostrar/visualizar.php">
                        <img src="../img/loguito2.png" alt="" height="45" class="d-inline-block align-text-top">
                    </a>
                    <a class="btn btn-success ml-2" href="../formulario/form_veracruz.php">Añadir</a>
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
                        <th>CLAVE</th>
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
                        <th>PANTALLA</th>
                        <th>OBSERVACIONES PANTALLA</th>
                        <th>PORCENTAJE PANTALLA</th>
                        <th>NOBREAK</th>
                        <th>OBSERVACIONES NOBREAK</th>
                        <th>PORCENTAJE NOBREAK</th>
                        <th>MODIFICAR</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Muestra los datos de la tabla form_pc
                    $result_pc = $conn->query("SELECT * FROM veracruz WHERE clave LIKE 'VE%'");
                    if ($result_pc->num_rows > 0) {
                        while ($mostrar_pc = $result_pc->fetch_assoc()) {
                            ?>
                            <tr>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar_pc['Id']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar_pc['clave']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar_pc['area']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar_pc['equipo']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar_pc['marca']); ?></td>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar_pc['modelo']); ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['especificaciones']) ? htmlspecialchars($mostrar_pc['especificaciones']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['observaciones']) ? htmlspecialchars($mostrar_pc['observaciones']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['porcentaje_equipo']) ? htmlspecialchars($mostrar_pc['porcentaje_equipo']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['teclado']) ? htmlspecialchars($mostrar_pc['teclado']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['observaciones_teclado']) ? htmlspecialchars($mostrar_pc['observaciones_teclado']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['porcentaje_teclado']) ? htmlspecialchars($mostrar_pc['porcentaje_teclado']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['mouse']) ? htmlspecialchars($mostrar_pc['mouse']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['observaciones_mouse']) ? htmlspecialchars($mostrar_pc['observaciones_mouse']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['porcentaje_mouse']) ? htmlspecialchars($mostrar_pc['porcentaje_mouse']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['pantalla']) ? htmlspecialchars($mostrar_pc['pantalla']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['observaciones_pantalla']) ? htmlspecialchars($mostrar_pc['observaciones_pantalla']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['porcentaje_pantalla']) ? htmlspecialchars($mostrar_pc['porcentaje_pantalla']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['nobreak']) ? htmlspecialchars($mostrar_pc['nobreak']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['observaciones_nobreak']) ? htmlspecialchars($mostrar_pc['observaciones_nobreak']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_pc['porcentaje_nobreak']) ? htmlspecialchars($mostrar_pc['porcentaje_nobreak']) : ""; ?></td>
                                <td class="text-center icon-cell"><a href="../modificar/modificarVeracruz.php?id=<?php echo $mostrar_pc['Id']; ?>"><i class="fa fa-pencil-square-o fa-2x"></i></a></td>
                            </tr>
                            <?php
                        }
                    } else {
                        echo "<tr><td colspan='21' class='text-center'>No hay registros disponibles.</td></tr>";
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="8" class="text-right">Promedios:</td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <!-- Segunda tabla (Cámaras y Redes) -->
        <h2 class="display-6" style="color:black">Cámaras y Redes</h2>
        <div class="table-responsive">
            <table class="table table-hover">
                <thead class="thead">
                    <tr>
                        <th>Id</th>
                        <th>CÁMARAS</th>
                        <th>OBSERVACIONES CÁMARAS</th>
                        <th>PORCENTAJE CÁMARAS</th>
                        <th>REDES</th>
                        <th>OBSERVACIONES REDES</th>
                        <th>PORCENTAJE REDES</th>
                        <th>MODIFICAR</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Muestra los datos de cámaras y redes
                    $result_camaras = $conn->query("SELECT * FROM veracruz WHERE clave LIKE 'VE%'");
                    if ($result_camaras->num_rows > 0) {
                        while ($mostrar_camaras = $result_camaras->fetch_assoc()) {
                            ?>
                            <tr>
                                <td class="text-center"><?php echo htmlspecialchars($mostrar_camaras['Id']); ?></td>
                                <td class="text-center"><?php echo isset($mostrar_camaras['camaras']) ? htmlspecialchars($mostrar_camaras['camaras']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_camaras['observaciones_camaras']) ? htmlspecialchars($mostrar_camaras['observaciones_camaras']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_camaras['porcentaje_camaras']) ? htmlspecialchars($mostrar_camaras['porcentaje_camaras']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_camaras['redes']) ? htmlspecialchars($mostrar_camaras['redes']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_camaras['observaciones_redes']) ? htmlspecialchars($mostrar_camaras['observaciones_redes']) : ""; ?></td>
                                <td class="text-center"><?php echo isset($mostrar_camaras['porcentaje_redes']) ? htmlspecialchars($mostrar_camaras['porcentaje_redes']) : ""; ?></td>
                                <td class="text-center icon-cell"><a href="../modificar/modificarVeracruz2.php?id=<?php echo $mostrar_camaras['Id']; ?>"><i class="fa fa-pencil-square-o fa-2x"></i></a></td>
                            </tr>
                            <?php
                        }
                    } else {
                        echo "<tr><td colspan='8' class='text-center'>No hay registros disponibles.</td></tr>";
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3" class="text-right">Promedios:</td>
                        <td class="text-center"><?php echo $promedio_camaras; ?></td>
                        <td class="text-center"></td>
                        <td class="text-center"></td>
                        <td class="text-center"><?php echo $promedio_redes; ?></td>
                        <td class="text-center"></td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</body>
</html>
