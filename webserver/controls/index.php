<?php
include("conexion.php");
?>

<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Controles</title>


	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
	--><link href="css/style_nav.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
	<script src="js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.11/css/all.css" integrity="sha384-p2jx59pefphTFIpeqCcISO9MdVfIm4pNnsL08A6v5vaQc4owkQqxMV8kg4Yvhaw/" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="img/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="img/favicon-16x16.png" sizes="16x16">

	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<style>
	.content {
		margin-top: 80px;
	}
	.table td, .table th {
    		padding: .75rem;
	  	vertical-align: middle;
       	 	border-top: 1px solid rgba(0,0,0,.06);
	}
</style>

</head>
<body class="">
	<nav class="navbar navbar-default navbar-fixed-top">
		<?php $control_visible = true; include('nav.php');?>
	</nav>
	<div class="container">
		<div class="content">
			<?php $filter_ano = (isset($_GET['filter_ano']) ? strtolower($_GET['filter_ano']) :  date("Y"));?>
			<center><h2>Lista de Controles <?php echo $filter_ano ?></h2></center>
			<hr />

			<?php
			if(isset($_GET['aksi']) == 'delete'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM controles WHERE id_control='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					//Elimino Control
					$delete_control = mysqli_query($con, "DELETE FROM controles WHERE id_control='$nik'");
					//Elimino Referencia
					$delete_referencia = mysqli_query($con, "DELETE FROM referencias WHERE id_control='$nik'");
					if($delete_control AND $delete_referencia){
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
			?>
			<div class="dropdown">
				<span><b>Responsable</b></span><button class="btn bmd-btn-icon dropdown-toggle" type="button" id="ex1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="material-icons">more_vert</i>
				</button>
				<div class="dropdown-menu dropdown-menu-left" aria-labelledby="ex1">
					<?php
					$filter_resp = (isset($_GET['filter_resp']) ? strtolower($_GET['filter_resp']) : NULL);  
					?>
					<a href="?filter_resp=0"><button class="btn dropdown-item <?php if($filter_resp == '0'){ echo 'active'; }?>" type="button">TODOS</button></a>
					<a href="?filter_resp=1"><button class="dropdown-item <?php if($filter_resp == '1'){ echo 'active'; }?>" type="button">TISO</button></a>
					<a href="?filter_resp=2"><button class="dropdown-item <?php if($filter_resp == '2'){ echo 'active'; }?>" type="button">FISO</button></a>
				</div>
			</div>			

			<div class="dropdown">
				<span><b>Año</b></span><button class="btn bmd-btn-icon dropdown-toggle" type="button" id="ex2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="material-icons">more_vert</i>
				</button>
				<div class="dropdown-menu dropdown-menu-left" aria-labelledby="ex1">
					<?php



					$filter_ano = (isset($_GET['filter_ano']) ? strtolower($_GET['filter_ano']) :  date("Y"));  

					for ( $i=2012; $i <= 2019; $i++)	{
					//for ( $i=2012; $i <= date("Y"); $i++)	{
						$activo =$filter_ano == $i ? 'active' : "";
						echo  '<a href="?filter_ano='.$i.'"><button class="btn dropdown-item" type="button" '.$activo.'>'.$i.'</button></a>';

					}



					?>







				</div>
			</div>	

			<br />
			<div class="table-responsive">
				<table class="table table-striped table-hover">
					<tr>
						<th>No</th>
						<th>Periodo</th>
						<th>Titulo</th>
						<th>Contenido</th>
						<th>Responsable</th>
						<th>Editar</th>
						<th>Borrar</th>
					</tr>
					<?php
					

					$query = "SELECT * FROM controles ";

					$query= $query.' WHERE ano='.$filter_ano;

					if($filter_resp!=0 ){

						$query= $query.' AND responsable ='.$filter_resp;
					}
					
					$sql = mysqli_query($con, $query.' ORDER BY id_control ASC');

					//	$sql = mysqli_query($con, "SELECT * FROM controles WHERE responsable='$filter_resp' ORDER BY id_control ASC");

					/*}else{
						$sql = mysqli_query($con, "SELECT * FROM controles ORDER BY id_control ASC");
					}*/
					if(mysqli_num_rows($sql) == 0){
						echo '<tr><td colspan="8">No hay datos.</td></tr>';
					}else{
						$no = 1;
						while($row = mysqli_fetch_assoc($sql)){
							echo '
							<tr>
							<td>'.$no.'</td>
							<td>';
							if($row['periodo'] == '1'){
								echo 'Mensual';
							}
							else if ($row['periodo'] == '6' OR $row['periodo'] == '2'){
								echo 'Semestral';
							}
							else if ($row['periodo'] == '3' ){
								echo 'Trimestral';
							}
							else if ($row['periodo'] == '4'){
								echo 'Trimestral';
							}
							else if ($row['periodo'] == '12' ){
								echo 'Anual';
							}
							echo '
							</td>								
							<td><a href="reference.php?nik='.$row['id_control'].'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> '.$row['titulo'].'</a></td>
							<td>'.$row['contenido'].'</td>
							<td><center>';
							if($row['responsable'] == '1'){
								echo 'TISO';
							}
							else if ($row['responsable'] == '2' ){
								echo 'FISO';
							}
							echo '
							</center></td>
							<td>
							<a href="edit.php?nik='.$row['id_control'].'" title="Editar datos" class="btn btn-primary btn-sm"><i class="material-icons">mode_edit</i></a>
							</td>
							<td>
							<a href="index.php?aksi=delete&nik='.$row['id_control'].'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos '.$row['titulo'].'?\')" class="btn btn-danger btn-sm"><i class="material-icons">delete_forever</i></a>
							</td>
							</tr>
							';
							$no++;
						}
					}
					?>
				</table>
			</div>
		</div>
	</div><center>
		<p>&copy; Gerencia de Seguridad Informatica <?php echo date("Y");?></p
		</center>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
	</html>
