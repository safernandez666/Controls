<?php
include("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Referencias</title>

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


	<!--Grafico de Torta-->
	<?php  
 			$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
 			
 			$query = "SELECT estados.estado as status, count(*) as number FROM referencias INNER JOIN estados ON referencias.status = estados.id_estado where id_control = '$nik' GROUP BY status";
			$result = mysqli_query($con, $query); 
			$mesActual = date('m');
			$queryHastaHoy = "SELECT estados.estado as status, count(*) as number FROM referencias INNER JOIN estados ON referencias.status = estados.id_estado where id_control = '$nik' AND mes <= '$mesActual' GROUP BY status";
			$resultHastaHoy = mysqli_query($con, $queryHastaHoy); 


 			//Titulo
 			$id = mysqli_query($con, "SELECT titulo FROM controles WHERE id_control = '$nik'");
 			$fila = mysqli_fetch_assoc($id);
 					
 	?>
 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
 	<script type="text/javascript">  
 		google.charts.load('current', {
 			packages: ['corechart']
 		}).then(function () {
 			var data = google.visualization.arrayToDataTable([
 				['status', 'number'],
 				<?php  
 				while($row = mysqli_fetch_array($resultHastaHoy))  
 				{  
 					echo "['".$row["status"]."', ".$row["number"]."],";  
 				}  
 				?>  
 				]);

 			var colors = [];
 			var colorMap = {
 				'Controlado': '#5cb85c',
 				'Pendiente': '#d9534f'
 			}
 			for (var i = 0; i < data.getNumberOfRows(); i++) {
 				colors.push(colorMap[data.getValue(i, 0)]);
 			}

 			var options = {
 				title: 'Cumplimiento al Mes <?php echo date("m");?>',
 				is3D: true,
 				colors: colors,
 				backgroundColor: '#fafafa'
 			};
 			var chart = new google.visualization.PieChart(document.getElementById('piechartHastaMes'));
 			chart.draw(data, options);
 		});
 	</script>  
 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
 	<script type="text/javascript">  
 		google.charts.load('current', {
 			packages: ['corechart']
 		}).then(function () {
 			var data = google.visualization.arrayToDataTable([
 				['status', 'number'],
 				<?php  
 				while($row = mysqli_fetch_array($result))  
 				{  
 					echo "['".$row["status"]."', ".$row["number"]."],";  
 				}  
 				?>  
 				]);

 			var colors = [];
 			var colorMap = {
 				'Controlado': '#5cb85c',
 				'Pendiente': '#d9534f'
 			}
 			for (var i = 0; i < data.getNumberOfRows(); i++) {
 				colors.push(colorMap[data.getValue(i, 0)]);
 			}

 			var options = {
 				title: 'Cumplimiento <?php echo date("Y");?>',
 				is3D: true,
 				colors: colors,
 				backgroundColor: '#fafafa'
 			};
 			var chart = new google.visualization.PieChart(document.getElementById('piechart'));
 			chart.draw(data, options);
 		});
 	</script>  
 </head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<?php $control_visible = false; include('nav.php');?>
	</nav>
	<div class="container">
		<div class="content">
			<center><h2>Revision | <?php echo $fila['titulo']?></h2></center>
			<hr />

			<?php
			if(isset($_GET['aksi']) == 'delete'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM referencias WHERE id_control='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$delete = mysqli_query($con, "DELETE FROM referencias WHERE id_control='$nik'");
					if($delete){
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
			?>



<div class="dropdown">
 <span><b>Estado</b></span> <button class="btn bmd-btn-icon dropdown-toggle" type="button" id="ex1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <i class="material-icons">more_vert</i>
  </button>
  <div class="dropdown-menu dropdown-menu-left" aria-labelledby="ex1">
  	<?php
  	 $filter = (isset($_GET['filter']) ? strtolower($_GET['filter']) : NULL);
  	 $nik = strip_tags($_GET["nik"],ENT_QUOTES);  
  	?>
    <a href="?filter=0&nik=<?php echo $nik;?>"><button class="btn dropdown-item <?php if($filter == '0'){ echo 'active'; }?>" type="button">Filtro Estado</button></a>
    <a href="?filter=1&nik=<?php echo $nik;?>"><button class="dropdown-item <?php if($filter == '1'){ echo 'active'; }?>" type="button">Controlado</button></a>
    <a href="?filter=2&nik=<?php echo $nik;?>"><button class="dropdown-item <?php if($filter == '2'){ echo 'active'; }?>" type="button">Pendiente</button></a>
  </div>
  	<?php echo "<input type='hidden' id='nik' name='nik' value='".strip_tags($_GET["nik"],ENT_QUOTES)."'/>" ?>
</div>			







			<br />

			<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
                    <th>No</th>
					<th>Mes</th>
                    <th>Estado</th>
                    <th>Acciones</th>
				</tr>
				<?php

				//AGREGO
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));

              	if($filter){
					$sql = mysqli_query($con, "SELECT *  FROM referencias  WHERE mes < '13' AND id_control= '$nik' AND status='$filter' ORDER BY nro_referencia ASC");
               	}else{
					$sql = mysqli_query($con, "SELECT * FROM referencias WHERE mes < '13' AND id_control='$nik' ORDER BY nro_referencia ASC");
				}
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
				
					while($row = mysqli_fetch_assoc($sql)){
						echo '
						<tr>
							<td>'.$no.'</td>
							<td>';
						        if($row['mes'] == '1'){
                                    echo 'Enero';
                                }
                                else if ($row['mes'] == '2' ){
                                    echo 'Febrero';
                                }
                                else if ($row['mes'] == '3' ){
                                    echo 'Marzo';
                                }
                                else if ($row['mes'] == '4' ){
                                    echo 'Abril';
                                }
                                else if ($row['mes'] == '5' ){
                                    echo 'Mayo';
                                }
                                else if ($row['mes'] == '6' ){
                                    echo 'Junio';
                                }
                                else if ($row['mes'] == '7' ){
                                    echo 'Julio';
                                }
                                else if ($row['mes'] == '8' ){
                                    echo 'Agosto';
                                }
                                else if ($row['mes'] == '9' ){
                                    echo 'Setpiembre';
                                }
                                else if ($row['mes'] == '10' ){
                                    echo 'Octubre';
                                }
                                else if ($row['mes'] == '11' ){
                                    echo 'Noviembre';
                                }
                                else if ($row['mes'] == '12' ){
                                    echo 'Diciembre';
                                }
                            echo '
                            </td>				
                            <td>';
							if($row['status'] == '1'){
								echo '<span class="label label-success">Controlado</span>';
							}
                            else if ($row['status'] == '2' ){
								echo '<span class="label label-danger">Pendiente</span>';
							}
						    echo '
							</td>
							<td>
								<a href="edit_reference.php?nik='.$row['id_referencia'].'" title="Editar Controles" class="btn btn-primary btn-sm"><i class="material-icons">mode_edit</i></a>
								<a href="reference.php?aksi=delete&nik='.$row['id_referencia'].'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos '.$row['id_referencia'].'?\')" class="btn btn-danger btn-sm"><i class="material-icons">delete_forever</i></a>
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

		    <!--Table and divs that hold the pie charts-->


		<?php
			if($filter==0){
				echo '<center><h2>Indicadores</h2></center>';
		 		echo '<br />';  
		 		echo '<table class="columns">';
		    	echo '<tr>';
		    		echo '<td><div id="piechart" style="width: 600px; height: 400px style="border: 2px solid #ccc"></div></td>';
		    		echo '<td><div id="piechartHastaMes" style="width: 600px; height: 400px style="border: 2px solid #ccc"></div></td>';
		    	echo '</tr>';
		    echo '</table>';
	        }
	    ?>
	</div><center>
	<p>&copy; Gerencia de Seguridad de la Informacion <?php echo date("Y");?></p>
	</center>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
