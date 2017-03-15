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
	<div class="col-lg-8 col-md-8 col-sm-8 col-lg-offset-2 col-md-offset-2 col-sm-offset-2">
		<div class="formulario" style="padding:0">
		<h1 class="text-center" style="padding-top:30px; padding-bottom:30px; opacity: 0.5; margin:0; background-color:#C4C4CC">Registro Producto</h1>
		<div style="padding:40px 50px">
		<form role="form">
            <div class="form-group text-center">
            <div class="form-group text-center " style="padding-top:30px>
			  <label for="usrname"> Nombre</label>
              <input type="text" class="form-control" id="usrname">
			</div>
			<div class="form-group text-center " style="padding-top:30px>
			  <label for="usrname"> Descripcion</label>
              <textarea class="form-control" rows="2" id="comment"></textarea>
			</div>
            <div class="form-group text-center" style="padding-top:30px>
              <label for="psw"> Precio</label>
              <input type="text" class="form-control" id="pwd">
            </div>
			
			<div class="form-group">
				<label for="sel1">Seccion</label>
				<select class="form-control" id="sel1">
					<option>a</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="sel1">Marca</label>
				<select class="form-control" id="sel1">
					<option>a</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
				</select>
			</div>

			<div class="form-group">
				<label for="sel1">Tipo</label>
				<select class="form-control" id="sel1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
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



<script src="jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>


</body></html>
