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

	<!-- Bootstrap -->
	<link href="css/style_nav.css" rel="stylesheet">
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.11/css/all.css" integrity="sha384-p2jx59pefphTFIpeqCcISO9MdVfIm4pNnsL08A6v5vaQc4owkQqxMV8kg4Yvhaw/" crossorigin="anonymous">

	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<style>
	.content {
		margin-top: 80px;
	}
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
			$sql = mysqli_query($con, "SELECT * FROM referencias WHERE id_referencia='$nik'");
			if(mysqli_num_rows($sql) == 0){
				header("Location: reference.php?nik=".'$nik');
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){
				$accion = mysqli_real_escape_string($con,(strip_tags($_POST["accion"],ENT_QUOTES)));//Escanpando caracteres
				$observacion = mysqli_real_escape_string($con,(strip_tags($_POST["observacion"],ENT_QUOTES)));//Escanpando caracteres
				$evidencia = mysqli_real_escape_string($con,(strip_tags($_POST["evidencia"],ENT_QUOTES)));//Escanpando caracteres
				$status	= mysqli_real_escape_string($con,(strip_tags($_POST["status"],ENT_QUOTES)));//Escanpando caracteres
				
				$update = mysqli_query($con, "UPDATE referencias SET accion='$accion', modificacion = NOW(), observacion='$observacion', evidencia='$evidencia', status='$status' WHERE id_referencia='$nik'") or die(mysqli_error());
				if($update){
					echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" zaria-hidden="true">&times;</button>Bien hecho! Los datos han sido guardados con éxito.</div>';
					$sql = mysqli_query($con, "SELECT * FROM referencias WHERE id_referencia='$nik'");
					if(mysqli_num_rows($sql) == 0){
						header("Location: reference.php?nik=".'$nik');
					}else{
						$row = mysqli_fetch_assoc($sql);
					}
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
				}
			}
			
			if(isset($_GET['pesan']) == 'sukses'){
				echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" zaria-hidden="true">&times;</button>Bien hecho! Los datos han sido guardados con éxito.</div>';

			}
			?>
			<form class="form-horizontal" action="" method="post">
				<div class="form-group">
					<label class="col-sm-3 control-label">Accion</label>
					<div class="col-sm-4">
						<input type="text" name="accion" value="<?php echo $row ['accion']; ?>" class="form-control" placeholder="Accion" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">Observacion</label>
					<div class="col-sm-4">
						<textarea name="observacion"  rows="10" class="form-control" placeholder="Observacion" required><?php echo $row ['observacion']; ?></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">Evidencia</label>
					<div class="col-sm-4">
						<input type="text" name="evidencia" value="<?php echo $row ['evidencia']; ?>" class="form-control" placeholder="Evidencia" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">Estado</label>
					<div class="col-sm-3">
						<select name="status" class="form-control">
							<option value=""> ----- </option>
							<option value='1'<?php if($row['status'] == '1'){ echo 'selected'; } ?>>Controlado</option>
							<option value='2'<?php if($row['status'] == '2'){ echo 'selected'; } ?>>Pendiente</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">&nbsp;</label>
					<div class="col-sm-6">
						<input type="submit" name="save" class="btn  btn-raised btn-success" value="Guardar datos">
						<a href="reference.php?nik=<?php echo $row['id_control']; ?>" class="btn btn-danger btn-raised">Cancelar</a>
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
