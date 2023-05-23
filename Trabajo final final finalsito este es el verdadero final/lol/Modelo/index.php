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

  <title>Proyecto bases de datos</title>
  <style>
    body {
      font-family: "Arial Rounded MT", Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #FFE8CC; /* Color de fondo naranja claro */
    }

    h1 {
      text-align: center;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    li {
      margin-bottom: 10px;
    }

    .button-container {
      margin-bottom: 10px;
    }

    input[type="button"] {
      padding: 10px 20px;
      font-size: 16px;
    }
  </style>
</head>
<body>
  <h1>Proyecto bases de datos</h1>
  <ul>
    <li>Jeronimo Duque</li>
    <li>Natalia Hernandez</li>
    <li>Santiago Lonoño</li>
    <li>Juan Esteban Mendez</li>
  </ul>


  <form>
  <div class="button-container">
    <a href="../Views/htmlvista1.php" class="button">Mostrar consultas pt1</a>
  </div>
  <form>
  <div class="button-container">
    <a href="../Views/htmlvista2.php" class="button">Mostrar consultas pt2</a>
  </div>
</form>
</body>
</html>