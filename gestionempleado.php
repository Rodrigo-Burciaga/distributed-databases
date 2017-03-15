<html><head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/estilos.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
      <li><a href="registroempleado.php">Registrar Empleado</a></li>
      <li><a href="registroproducto.php">Registrar Producto</a></li>
      <li><a href="gestionempleado.php">Gestion de Empleados</a></li>
	  <li><a href="gestionproducto.php">Gestion de Productos</a></li>
    </ul>
  </div>
</nav>
	
<div class="row">
	<div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
	
		<div style="padding:0" class="gestion">
		<h1 class="text-center" style="padding-top:30px; padding-bottom:30px; opacity: 0.5; margin:0; background-color:#C4C4CC">Gestion Empleado</h1>
		<div class="container-fluid">
			 <h4><label for="psw" class="glyphicon glyphicon-eye-open" > Buscar: </label></h4>
             <input type="text" class="form-control" id="inputdefault" id="psw" size="30px">	
		</div>
			<div class="table-responsive">
				<table class="table">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Apellido Pat</th>
						<th>Apellido Mat</th>
						<th>CURP</th>
						<th>Domicilio</th>
						<th>Editar/Detalles</th>
						<th>Eliminar</th>
					</tr>
				</thead>
				<tbody>
				<tr class="info">
					<td>Jorge</td>
					<td>Gonzalez</td>
					<td>Garcia</td>
					<td>ABCDE1234556412</td>
					<td>calle 1 colonia 2 delegacion 3</td>
					<td>
						<button type="button" class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-plus"></span>
						</button>
					</td>
					<td>
						<button type="button" class="btn btn-default btn-sm btn-danger">
						<span class="glyphicon glyphicon-remove-sign"></span>
						</button>
					</td>
				</tr>
				
				<tr>
					<td>Luis</td>
					<td>Ramos</td>
					<td>Hernandez</td>
					<td>ABCDE1234556412</td>
					<td>calle 1 colonia 2 delegacion 3</td>
					<td>
						<button type="button" class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-plus"></span>
						</button>
					</td>
					<td>
						<button type="button" class="btn btn-default btn-sm btn-danger">
						<span class="glyphicon glyphicon-remove-sign"></span>
						</button>
					</td>
				</tr>
				
				<tr class="info">
					<td>Andres</td>
					<td>Contreras</td>
					<td>Caballero</td>
					<td>ABCDE1234556412</td>
					<td>calle 1 colonia 2 delegacion 3</td>
					<td>
						<button type="button" class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-plus"></span>
						</button>
					</td>
					<td>
						<button type="button" class="btn btn-default btn-sm btn-danger">
						<span class="glyphicon glyphicon-remove-sign"></span>
						</button>
					</td>
				</tr>

				</tbody>
				</table>
			</div>
		</div>
</div>


</div>




</div>




<script src="jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>



</body></html>
