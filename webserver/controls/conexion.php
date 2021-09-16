<?php
/*Datos de conexion a la base de datos*/
$db_host = "mysql";
$db_user = "root";
$db_pass = "secret";
$db_name = "gs";

$con = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if(mysqli_connect_errno()){
	echo 'No se pudo conectar a la base de datos : '.mysqli_connect_error();
}
?>
