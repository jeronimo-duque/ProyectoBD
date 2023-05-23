<?php
$servername = "Localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";


// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
echo "Conexión exitosa";

$conn->close();
?>
<!DOCTYPE html>
<html>
<head>
  <title>Consultas SQL: declaración SELECT, WHERE y sentencias JOIN</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #FDF2E9; /* Color de fondo naranja claro */
    }

    h1 {
      text-align: center;
    }

    h2 {
      margin-top: 20px;
    }

    ul {
      list-style-type: decimal;
      
      padding-left: 20px;
      margin-top: 10px;
    }

    li {
      margin-bottom: 10px;
    }
    table{
      border: 1px solid black; /* Ancho y estilo del borde */
    }

    th, td {
        border: 1px solid black; /* Ancho y estilo del borde */
        padding: 8px; /* Espacio interno dentro de las celdas */
    }
  </style>
</head>
<body>
  <h1>Consultas SQL: declaración SELECT, WHERE y sentencias JOIN</h1>

  <h2>1. Mostrar los datos de 10 empleados de la compañía.</h2>
  <?php
// Realiza la conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "bdproyecto");

// Verifica si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Error de conexsión: " . $conexion->connect_error);
}

// Ejecuta la consulta a la base de datos
$query = "SELECT * FROM empleado LIMIT 10";
$resultado = $conexion->query($query);

// Imprime la tabla
echo "<table>";
echo "<tr><th>Empleado ID</th><th>Primer Nombre</th><th>Primer Apellido</th><th>Activo</th></tr>";

// Recorre los resultados y muestra los datos en la tabla
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["Empleado_ID"] . "</td>";
        echo "<td>" . $fila["Empleado_PrimerNombre"] . "</td>";
        echo "<td>" . $fila["Empleado_PrimerApellido"] . "</td>";
        echo "<td>" . $fila["Empleado_Activo"] . "</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='3'>No hay resultados</td></tr>";
}

echo "</table>";

// Cierra la conexión a la base de datos
$conexion->close();
?>

  <h2>2. Mostrar los datos de 10 cursos que han sido dictados.</h2>
  <?php
// Realiza la conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "bdproyecto");

// Verifica si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Error de conexsión: " . $conexion->connect_error);
}

// Ejecuta la consulta a la base de datos
$query = "SELECT * FROM cursocursado LIMIT 10";
$resultado = $conexion->query($query);

// Imprime la tabla
echo "<table>";
echo "<tr><th>ID</th><th>nombre</th><th>Calificacion</th><th>EstadoProgreso</th><th>PAIS</th></tr>";

// Recorre los resultados y muestra los datos en la tabla
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["CursoCursado_ID"] . "</td>";
        echo "<td>" . $fila["cursocursado_nombre"] . "</td>";
        echo "<td>" . $fila["CursoCursado_Calificacion"] . "</td>";
        echo "<td>" . $fila["CursoCursado_EstadoProgreso"] . "</td>";
        echo "<td>" . $fila["PAIS_ID"] . "</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='3'>No hay resultados</td></tr>";
}

echo "</table>";

// Cierra la conexión a la base de datos
$conexion->close();
?>
  <h2>3. Mostrar los 5 cursos que han sido realizados por la mayor cantidad de empleados de las sedes de la compañía en Panamá.</h2>
  <?php
// Realiza la conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "bdproyecto");

// Verifica si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Error de conexsión: " . $conexion->connect_error);
}

// Ejecuta la consulta a la base de datos
$query = "SELECT cc.cursocursado_nombre, COUNT(e.Empleado_ID) AS total_empleados
          FROM CursoCursado cc
          JOIN empleado e ON cc.Cursocursado_ID = e.cursocursado_id
          JOIN pais p ON e.estado_ID = p.Pais_ID
          WHERE p.Pais_ID = 'PAN'
          GROUP BY cc.CursoCursado_ID
          ORDER BY total_empleados DESC
          LIMIT 5";
$resultado = $conexion->query($query);

// Imprime la tabla
echo "<table>";
echo "<tr><th>Curso</th><th>Total Empleados</th></tr>";

// Recorre los resultados y muestra los datos en la tabla
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["cursocursado_nombre"] . "</td>";
        echo "<td>" . $fila["total_empleados"] . "</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='2'>No hay resultados</td></tr>";
}

echo "</table>";

// Cierra la conexión a la base de datos
$conexion->close();
?>
  <h2>4. Mostrar los 5 cursos que han sido realizados por la mayor cantidad de empleados de las sedes de la compañía en Costa Rica.</h2>
  <?php
// Realiza la conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "bdproyecto");

// Verifica si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Error de conexsión: " . $conexion->connect_error);
}
// Ejecuta la consulta a la base de datos
$query = "SELECT cc.cursocursado_nombre, COUNT(e.Empleado_ID) AS total_empleados
          FROM CursoCursado cc
          JOIN empleado e ON cc.Cursocursado_ID = e.cursocursado_id
          JOIN pais p ON e.estado_ID = p.Pais_ID
          WHERE p.Pais_ID = 'CRI'
          GROUP BY cc.CursoCursado_ID
          ORDER BY total_empleados DESC
          LIMIT 5";
$resultado = $conexion->query($query);

// Imprime la tabla
echo "<table>";
echo "<tr><th>Curso</th><th>Total Empleados</th></tr>";

// Recorre los resultados y muestra los datos en la tabla
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["cursocursado_nombre"] . "</td>";
        echo "<td>" . $fila["total_empleados"] . "</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='2'>No hay resultados</td></tr>";
}

echo "</table>";

// Cierra la conexión a la base de datos
$conexion->close();
?>
  <h2>5. Mostrar los 10 cursos en modalidad virtual que han sido realizados por la mayor cantidad de empleados de las sedes de la compañía en Colombia.</h2>
  <?php
// Realiza la conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "bdproyecto");

// Verifica si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Error de conexsión: " . $conexion->connect_error);
}
$query = "SELECT *
          FROM cursocursado
          WHERE Pais_ID = 'COL' AND CursoCursado_EstadoProgreso = 'Aprobado (Pres)'
          LIMIT 10";
$resultado = $conexion->query($query);

// Imprime la tabla
echo "<table>";
echo "<tr><th>ID</th><th>Nombre del Curso</th><th>Estado de Progreso</th></tr>";

// Recorre los resultados y muestra los datos en la tabla
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["CursoCursado_ID"] . "</td>";
        echo "<td>" . $fila["cursocursado_nombre"] . "</td>";
        echo "<td>" . $fila["CursoCursado_EstadoProgreso"] . "</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='3'>No hay resultados</td></tr>";
}

echo "</table>";

// Cierra la conexión a la base de datos
$conexion->close();
?>
  <h2>6. Mostrar los 10 cursos en modalidad presencial que han sido realizados por la mayor cantidad de empleados de las sedes de la compañía en Colombia.</h2>
  <?php
// Realiza la conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "bdproyecto");

// Verifica si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Error de conexsión: " . $conexion->connect_error);
}
// Ejecuta la consulta a la base de datos
$query = "SELECT *
          FROM cursocursado
          WHERE Pais_ID = 'COL' AND CursoCursado_EstadoProgreso = 'Aprobado (Virtual)'
          LIMIT 10";
$resultado = $conexion->query($query);

// Imprime la tabla
echo "<table>";
echo "<tr><th>ID</th><th>Nombre del Curso</th><th>Estado de Progreso</th></tr>";

// Recorre los resultados y muestra los datos en la tabla
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["CursoCursado_ID"] . "</td>";
        echo "<td>" . $fila["cursocursado_nombre"] . "</td>";
        echo "<td>" . $fila["CursoCursado_EstadoProgreso"] . "</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='3'>No hay resultados</td></tr>";
}

echo "</table>";

// Cierra la conexión a la base de datos
$conexion->close();
?>
  <h2>7. Mostrar los 10 empleados con las mejores notas (calificación). Para este caso tomaremos como la mejor nota el valor 100.</h2>
  <?php
// Realiza la conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "bdproyecto");

// Verifica si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Error de conexsión: " . $conexion->connect_error);
}
// Ejecuta la consulta a la base de datos
$query = "SELECT e.*
          FROM empleado e
          JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
          WHERE cc.CursoCursado_Calificacion = '100'
          ORDER BY cc.CursoCursado_Calificacion DESC
          LIMIT 10";
$resultado = $conexion->query($query);

// Imprime la tabla
echo "<table>";
echo "<tr><th>ID</th><th>Nombre</th><th>Apellido</th></tr>";

// Recorre los resultados y muestra los datos en la tabla
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["Empleado_ID"] . "</td>";
        echo "<td>" . $fila["Empleado_PrimerNombre"] . "</td>";
        echo "<td>" . $fila["Empleado_PrimerApellido"] . "</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='3'>No hay resultados</td></tr>";
}

echo "</table>";

// Cierra la conexión a la base de datos
$conexion->close();
?>


</body>
</html>