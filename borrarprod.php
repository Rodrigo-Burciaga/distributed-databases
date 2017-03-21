<?php 
	session_start();
	include "conection/conexion.php";
	conectar();

        if (!$conexion) {
				die("Connection failed: " . mysqli_connect_error());
        }

	$sku = $_POST['comand'];
	
	$sqlborrar = "delete from producto where sku=".$sku.";";
	$result = mysqli_query($conexion, $sqlborrar);
	
?>