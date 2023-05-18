<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "bdproyecto";

// Crear una conexión
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Verificar la conexión
if (!$conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}
echo "Conexión exitosa";

$sql = "SELECT * FROM usuario";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "ID: " . $row["id"] . " - Nombre: " . $row["nombre"] . " - Email: " . $row["email"] . "<br>";
    }
} else {
    echo "No se encontraron resultados.";
}

// Cerrar la conexión
mysqli_close($conn);
?>



