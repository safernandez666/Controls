<?php
include("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Datos de controles</title>

	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
	--><link href="css/style_nav.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
	<script src="js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.11/css/all.css" integrity="sha384-p2jx59pefphTFIpeqCcISO9MdVfIm4pNnsL08A6v5vaQc4owkQqxMV8kg4Yvhaw/" crossorigin="anonymous">

	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<style>
	.content {
		margin-top: 80px;
	}
	</style>

</style>

</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<?php $control_visible = false; include("nav.php");?>
	</nav>
	<div class="container">
		<div class="content">
			<h2>Datos del Control &raquo; Editar Control</h2>
			<hr />
			
			<?php
			// escaping, additionally removing everything that could be (html/javascript-) code
			$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
			$sql = mysqli_query($con, "SELECT * FROM controles WHERE id_control='$nik'");
			if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){

			

				$titulo = mysqli_real_escape_string($con,(strip_tags($_POST["titulo"],ENT_QUOTES)));//Escanpando caracteres
				$contenido = mysqli_real_escape_string($con,(strip_tags($_POST["contenido"],ENT_QUOTES)));//Escanpando caracteres
				$responsable = mysqli_real_escape_string($con,(strip_tags($_POST["responsable"],ENT_QUOTES)));//Escanpando caracteres
				
				$update = mysqli_query($con, "UPDATE controles SET titulo='$titulo', contenido='$contenido', modificado = NOW(), responsable='$responsable' WHERE id_control='$nik'") or die(mysqli_error());

				if($update){
					echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" zaria-hidden="true">&times;</button>Bien hecho! Los datos han sido guardados con éxito.</div>';
						$sql = mysqli_query($con, "SELECT * FROM controles WHERE id_control='$nik'");
						if(mysqli_num_rows($sql) == 0){
							header("Location: index.php");
						}else{
							$row = mysqli_fetch_assoc($sql);
						}


				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error. No se pudo guardar los datos !</div>';
				}

			}			
			if(isset($_GET['pesan']) == 'sukses'){
				echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" zaria-hidden="true">&times;</button>Bien hecho! Los datos han sido guardados con éxito.</div>';
			}
			?>
			<form class="form-horizontal" action="" method="post">
				<div class="form-group">
					<label class="col-sm-3 control-label">Titulo</label>
					<div class="col-sm-4">
						<input type="text" name="titulo" value="<?php echo $row ['titulo']; ?>" class="form-control" placeholder="NIK" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">Contenido</label>
					<div class="col-sm-4">
						<input type="text" name="contenido" value="<?php echo $row ['contenido']; ?>" class="form-control" placeholder="contenido" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">Responsable</label>
					<div class="col-sm-3">
						<select name="responsable" class="form-control">
							<option value='1'<?php if($row['responsable'] == '1'){ echo 'selected'; } ?>>TISO</option>
							<option value='2'<?php if($row['responsable'] == '2'){ echo 'selected'; } ?>>FISO</option>
						</select>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">&nbsp;</label>
						<div class="col-sm-6">
							<input type="submit" name="save" class="btn  btn-raised btn-success" value="Guardar datos">
							<a href="index.php" class="btn btn-danger btn-raised">Cancelar</a>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script>
			$('.date').datepicker({
				format: 'dd-mm-yyyy',
			})
		</script>
	</body>
	</html>
