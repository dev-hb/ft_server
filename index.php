<?php

$name = "Nginx";

echo "<h2>This is the $name server working..</h2>";

echo "<h3>Fetching data from MariaDB</h3>";

$conn = new mysqli("localhost", "dbadmin", "toor", "db_ft_server");
$res = $conn->query("SELECT * FROM students");

var_dump($conn);

if($conn->connect_error == ""){
    $data = [];
    echo "<table border=1><tr><td>ID</td><td>Name</td></tr>";
    while($row = $res->fetch_array()){
        echo "<tr><td>{$row['id']}</td>{$row['name']}<td></td></tr>";
    }
    echo "</table>";
}else{
    echo "Error : " . $conn->connect_error;
}