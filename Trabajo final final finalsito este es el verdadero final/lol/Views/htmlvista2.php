<!DOCTYPE html>
<html>
<head>
  <title>Consultas SQL: declaración SELECT, WHERE y funciones de agregación</title>
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
  </style>
</head>
<body>
  <h1>Consultas SQL: declaración SELECT, WHERE y funciones de agregación</h1>

  <h2>1. Cantidad de cursos en idiomas inglés.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT COUNT(*) AS cantidad_cursos
        FROM curso
        WHERE Curso_Idioma = 'Ingl‚s'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el número de cursos
$row = $result->fetch_assoc();
$cantidadCursos = $row["cantidad_cursos"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Cantidad de cursos en inglés</th>
        </tr>
        <tr>
            <td>$cantidadCursos</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>2. Cantidad de cursos en idiomas español.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT COUNT(*) AS cantidad_cursos
        FROM curso
        WHERE Curso_Idioma = 'espanol'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el número de cursos
$row = $result->fetch_assoc();
$cantidadCursos = $row["cantidad_cursos"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Cantidad de cursos en español</th>
        </tr>
        <tr>
            <td>$cantidadCursos</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>3. Cantidad de cursos en idiomas holandés.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT COUNT(*) AS cantidad_cursos
        FROM curso
        WHERE Curso_Idioma = 'holandes'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el número de cursos
$row = $result->fetch_assoc();
$cantidadCursos = $row["cantidad_cursos"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Cantidad de cursos en holandes</th>
        </tr>
        <tr>
            <td>$cantidadCursos</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>4. Cantidad de cursos en idiomas francés.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT COUNT(*) AS cantidad_cursos
        FROM curso
        WHERE Curso_Idioma = 'frances'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el número de cursos
$row = $result->fetch_assoc();
$cantidadCursos = $row["cantidad_cursos"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Cantidad de cursos en francés</th>
        </tr>
        <tr>
            <td>$cantidadCursos</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>5. Cantidad de cursos aprobados por los empleados.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT COUNT(*) AS cantidad_cursos_aprobados
        FROM empleado e
        JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
        WHERE cc.CursoCursado_EstadoProgreso = 'Aprobado (Pres)' OR cc.CursoCursado_EstadoProgreso = 'Aprobado (Virtual)'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el número de cursos aprobados
$row = $result->fetch_assoc();
$cantidadCursosAprobados = $row["cantidad_cursos_aprobados"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Cantidad de cursos aprobados</th>
        </tr>
        <tr>
            <td>$cantidadCursosAprobados</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>6. Cantidad de cursos no aprobados por los empleados.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT COUNT(*) AS cantidad_cursos_aprobados
        FROM empleado e
        JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
        WHERE cc.CursoCursado_EstadoProgreso = 'No Aprobado (Pres)' OR cc.CursoCursado_EstadoProgreso = 'No Aprobado (Virtual)'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el número de cursos aprobados
$row = $result->fetch_assoc();
$cantidadCursosAprobados = $row["cantidad_cursos_aprobados"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Cantidad de cursos aprobados</th>
        </tr>
        <tr>
            <td>$cantidadCursosAprobados</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>7. Promedio de notas de los empleados de Colombia.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
        FROM empleado e
        JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
        JOIN pais p ON e.estado_ID = p.Pais_ID
        WHERE p.Pais_ID = 'COL'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el promedio de notas
$row = $result->fetch_assoc();
$promedioNotas = $row["promedio_notas"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Promedio de notas</th>
        </tr>
        <tr>
            <td>$promedioNotas</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>8. Promedio de notas de los empleados de Costa Rica.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
        FROM empleado e
        JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
        JOIN pais p ON e.estado_ID = p.Pais_ID
        WHERE p.Pais_ID = 'CRI'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el promedio de notas
$row = $result->fetch_assoc();
$promedioNotas = $row["promedio_notas"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Promedio de notas</th>
        </tr>
        <tr>
            <td>$promedioNotas</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>9. Promedio de notas de los empleados de Honduras.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
        FROM empleado e
        JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
        JOIN pais p ON e.estado_ID = p.Pais_ID
        WHERE p.Pais_ID = 'HON'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el promedio de notas
$row = $result->fetch_assoc();
$promedioNotas = $row["promedio_notas"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Promedio de notas</th>
        </tr>
        <tr>
            <td>$promedioNotas</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
  <h2>10. Promedio de notas de los empleados de Panamá.</h2>
  <?php
// Paso 1: Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdproyecto";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Paso 2: Ejecutar la consulta SQL
$sql = "SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
        FROM empleado e
        JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
        JOIN pais p ON e.estado_ID = p.Pais_ID
        WHERE p.Pais_ID = 'PAN'";

$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

// Paso 3: Obtener el promedio de notas
$row = $result->fetch_assoc();
$promedioNotas = $row["promedio_notas"];

// Paso 4: Mostrar el resultado en una tabla HTML
echo "<table>
        <tr>
            <th>Promedio de notas</th>
        </tr>
        <tr>
            <td>$promedioNotas</td>
        </tr>
      </table>";

// Paso 5: Cerrar la conexión a la base de datos
$conn->close();
?>
</body>
</html>

