<!DOCTYPE html>
<html>
<head>
    <title>Proyecto de base de datos</title>
    <style>
        /* Estilos CSS para personalizar la apariencia de la página */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        .name-list {
            margin-top: 20px;
        }

        .name-list li {
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Proyecto de base de datos</h1>

        <ul class="name-list">
            <li>Santiago Londoño Méndez</li>
            <li>Juan Esteban Méndez Tovar</li>
            <li>Jerónimo Duque Laverde</li>
            <li>Natalia Andrea Motta</li>
        </ul>

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

        // Cerrar la conexión
        mysqli_close($conn);
        ?>
    </div>
</body>
</html>

