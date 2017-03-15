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
	<div class="col-lg-6 col-lg-offset-3">
	
	<div class="formulario" style="padding:0">
		<h1 class="text-center" style="padding-top:30px; padding-bottom:30px; opacity: 0.5; margin:0; background-color:#C4C4CC">Registrar Empleado</h1>
		<div style="padding:40px 50px">
		<form role="form">
            <div class="form-group text-center">

            <div class="form-group text-center " >
			  <label for="usrname"> Nombre(s)</label>
              <input type="text" class="form-control" id="usrname">
			</div>
			<div class="form-group text-center " >
			  <label for="appaterno"> Apellido Paterno</label>
              <input type="text" class="form-control" id="appaterno">
			</div>
			<div class="form-group text-center " >
			  <label for="apmaterno"> Apellido Materno</label>
              <input type="text" class="form-control" id="apmaterno">
			</div>
            <div class="form-group text-center">
              <label for="curp"> CURP</label>
              <input type="text" class="form-control" id="curp">
            </div>
			<div class="form-group text-center">
              <label for="rfc"> RFC</label>
              <input class="form-control" id="rfc" type="text">
            </div>
			<div class="form-group text-center">
              <label for="tel"> Teléfono</label>
			  <input type="text" class="form-control" id="tel">
			</div>
			<div class="form-group text-center">
              <label for="salario"> Salario</label>
              <input type="text" class="form-control" id="salario">
            </div>
			<div class="form-group">
				<label for="sel1">Escolaridad:</label>
				<select class="form-control" id="sel1">
					<option>Primaria</option>
					<option>Secundaria</option>
					<option>Preparatoria</option>
					<option>Licenciatura</option>
				</select>
			</div>
			<div class="form-group text-center" >
              <label for="calle"> Domicilio</label><br/>
              <label for="calle">Calle</label>
              <input type="text" class="form-control form-inline" name="calle" id="calle">
            	

            <div class="col-lg-6">
            	<label for="numero">Numero</label>	
            	<input type="text" class="form-control form-inline" name="numero" id="numero" >
            </div>  

            <div class="col-lg-6">
            	<label for="cp">CP</label>
            	<input type="text" class="form-control" name="cp" id="cp">
            	<br/>
            </div>
            </div>
            
			<div class="form-group">
				<label for="sel2">Estatus</label>
				<select class="form-control" id="sel2">
					<option>Dar de Alta</option>
					<option>Dar de Baja</option>
					<option>Vacaciones</option>
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

	



</div>
	
		
	
</div>

<script src="jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>


</body></html>
