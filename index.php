<?php
function OpenCon()
 {
	$dbhost = "db_wordpress";
	$dbuser = "admin";
	$dbpass = "adminpsw";
	$db = "db_wordpress";
	$name = "Nginx";

	echo "<h2>This is the $name server working..</h2>";
	echo "<h3>Fetching data from MariaDB</h3>";

	$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
	
 	return $conn;
 }
 
function CloseCon($conn)
 {
	$conn -> close();
 }

?>

<?php
	$conn = OpenCon();
	echo "Connected Successfully";

	$data = [];
    echo "<table border=1><tr><td>ID</td><td>Name</td></tr>";
    while($row = $res->fetch_array()){
        echo "<tr><td>{$row['id']}</td>{$row['name']}<td></td></tr>";
    }
	echo "</table>";
	
	CloseCon($conn);
?>