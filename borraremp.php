<?php 
	session_start();
	include "conection/conexion.php";
	conectar();

        if (!$conexion) {
				die("Connection failed: " . mysqli_connect_error());
        }

	
	$id = $_POST['comand'];
	
	$sql="select d.id_domicilio from domicilio d, empleado e where d.id_domicilio=e.id_domicilio and e.id_empleado=$id";
	$result = mysqli_query($conexion, $sql);


	if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        $id_domicilio=$row["id_domicilio"];
    }
} else {
    echo "No se pudo encontrar el domicilio";
}


	$sqlborrar = "delete from domicilio where id_domicilio=$id_domicilio";
	if(mysqli_query($conexion, $sqlborrar)){
		echo "Eliminado Exitosamente";
	}
	else{
		echo "No se pudo eliminar: " . mysqli_error($conexion);
	}

		

	desconectar();
	
?>


