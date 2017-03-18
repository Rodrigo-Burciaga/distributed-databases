<?php 
include "conection/conexion.php";
conectar();

 ?>




<html><head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/estilos.css">


<title>Sneakerland | Tus Sneakers hablan por ti</title>
</head>
<body>

<div class="body"></div>

<div class="container-fluid">

 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">SneakerLand Admin</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home_administrador.php">Home</a></li>
      <li>
      	<form class="navbar-form" style="border: 0">
      		<div class="dropdown">
    			<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Registrar
   		 		<span class="caret"></span>
   		 		</button>
    			<ul class="dropdown-menu">
			      <li><a href="registroempleado.php">Empleados</a></li>
			      <li class="divider"><li>
			      <li><a href="registroproducto.php">Productos</a></li>
			      <li class="divider"><li>
			      <li ><a href="registrosucursal.php">Sucursales</a></li>
   				</ul>
  			</div>
    	</form>
     </li>
     <li>
      	<form class="navbar-form" style="border: 0">
      		<div class="dropdown">
    			<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Gestionar
   		 		<span class="caret"></span>
   		 		</button>
    			<ul class="dropdown-menu">
			      <li><a href="gestionempleado.php">Empleados</a></li>
			      <li class="divider"><li>
			      <li><a href="gestionproducto.php">Productos</a></li>
			      <li class="divider"><li>
			      <li ><a href="registrosucursal.php">Sucursales</a></li>
   				</ul>
  			</div>
    	</form>
     </li>
     <li>
      	<form class="navbar-form" style="border: 0">
      		<div class="dropdown">
    			<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Consultar
   		 		<span class="caret"></span>
   		 		</button>
    			<ul class="dropdown-menu">
			      <li><a href="consultarempleado.php">Empleados</a></li>
			      <li class="divider"><li>
			      <li><a href="consultarproducto.php">Productos</a></li>
			      <li class="divider"><li>
			      <li ><a href="consultarsucursal.php">Sucursales</a></li>
   				</ul>
  			</div>
    	</form>
     </li>


    </ul>
  </div>
</nav>	

<div class="row">
	<div class="col-lg-8 col-md-8 col-sm-8 col-lg-offset-2 col-md-offset-2 col-sm-offset-2">
		<div class="formulario" style="padding:0">
			<h1 class="text-center" style="padding-top:30px; padding-bottom:30px; opacity: 0.5; margin:0; background-color:#C4C4CC">Registro Producto</h1>
			<div style="padding:40px 50px">
				
				<form role="form" method="POST" action="validar_registroproducto.php">

            <div class="form-group text-center">

            <div class="form-group">
			  <label for=""> Nombre</label>
              <input type="text" style="text-align: center;" placeholder="Ingresa el nombre del producto.." class="form-control" id="nombre_producto" name="nombre_producto">
			</div>

			<div class="form-group text-center " >
			  <label for=""> Descripcion</label>
              <textarea class="form-control" style="text-align: center;" placeholder="Ingresa una descripción del producto.." rows="2" id="comentario" name="comentario"></textarea>
			</div>

            <div class="form-group text-center">
              <label for="psw"> Precio</label>
              <input type="number" min="0" class="form-control" id="precio" name="precio">
            </div>
			
			<div class="form-group">
				<label for="sel1">Seccion</label>
				<select class="form-control" id="seccion" name="seccion">
					<?php
					$query_seccion = "select * from seccion order by id_seccion";

					$result_query_seccion = mysqli_query($conexion,$query_seccion);

					while($Fila = mysqli_fetch_array($result_query_seccion))
					{
					?>
					<option  value="<?php echo $Fila["id_seccion"]?>"><?php echo $Fila["nombre_seccion"] ?></option>
					<?php
					}			
					?>
				</select>
			</div>
			
			<div class="form-group">
				<label for="sel1">Marca</label>
				<select class="form-control" id="marca" name="marca">
					<?php
					$query_marca = "select * from marca order by id_marca";

					$result_query_marca = mysqli_query($conexion,$query_marca);

					while($Fila = mysqli_fetch_array($result_query_marca))
					{
					?>
					<option  value="<?php echo $Fila["id_marca"]?>"><?php echo $Fila["nombre_marca"] ?></option>
					<?php
					}			
					?>
				</select>
			</div>

			<div class="form-group">
				<label for="sel1">Tipo</label>
				<select class="form-control" id="tipo" name="tipo">
					<?php
					$query_tipo = "select * from tipo order by id_tipo";

					$result_query_tipo = mysqli_query($conexion,$query_tipo);

					while($Fila = mysqli_fetch_array($result_query_tipo))
					{
					?>
					<option  value="<?php echo $Fila["id_tipo"]?>"><?php echo $Fila["nombre"] ?></option>
					<?php
					}			
					?>
				</select>
			</div>
			</div>
            <button type="submit" class="btn btn-danger my-btn btn-block"><span class="glyphicon glyphicon-off"></span> Registro</button>
        </form>

			</div>
		</div>
	</div>
</div>
</div>




<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>	



</body></html>
