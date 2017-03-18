<?php

	define('DB_SERVER', 'localhost');
	define('DB_USERNAME', 'root');
	define('DB_PASSWORD', '31193');
	define('DB_DATABASE', 'tenis');
   	$conexion;

function conectar()
{	
	global $conexion;
	$conexion = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
	mysqli_query("set names 'utf8'");
}

function desconectar(){
	mysqli_close($conexion);
}


?>
