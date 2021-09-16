<?php

include("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Reporte</title>
	<link rel="icon" type="image/png" href="img/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="img/favicon-16x16.png" sizes="16x16">

	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
	--><link href="css/style_nav.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
	<script src="js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.11/css/all.css" integrity="sha384-p2jx59pefphTFIpeqCcISO9MdVfIm4pNnsL08A6v5vaQc4owkQqxMV8kg4Yvhaw/" crossorigin="anonymous">
	<script>
	function openRealizados() {
    	window.open("/pdf/openRealizados.php");
	}
	function openPendientes() {
    	window.open("/pdf/openFaltantes.php");
	}
	</script>

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
	/* Button */
	.button {
		display: inline-block;
		position: relative;
		width: 120px;
		height: 32px;
		line-height: 32px;
		border-radius: 2px;
		font-size: 0.9em;
		background-color: #fff;
		color: #646464;
	}

	.button > paper-ripple {
		border-radius: 2px;
		overflow: hidden;
	}

	.button.narrow {
		width: 60px;
	}

	.button.grey {
		background-color: #eee;
	}

	.button.red {
		background-color: #f44336;
		color: #fff;
	}

	.button.green {
		background-color: #0f9d58;
		color: #fff;
	}

	.button.raised {
		transition: box-shadow 0.2s cubic-bezier(0.4, 0, 0.2, 1);
		transition-delay: 0.2s;
		box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
	}

	.button.raised:active {
		box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2);
		transition-delay: 0s;
	}

	/* Icon Button */
	.icon-button {
		position: relative;
		display: inline-block;
		width: 56px;
		height: 56px;
	}

	.icon-button > core-icon {
		margin: 16px;
		transition: -webkit-transform 0.2s cubic-bezier(0.4, 0, 0.2, 1);
		transition: transform 0.2s cubic-bezier(0.4, 0, 0.2, 1);
	}

	.icon-button:hover > core-icon {
		-webkit-transform: scale(1.2);
		transform: scale(1.2);
	}

	.icon-button > paper-ripple {
		overflow: hidden;
		color: #646464;
	}

	.icon-button.red > core-icon::shadow path {
		fill: #db4437;
	}

	.icon-button.red > paper-ripple {
		color: #db4437;
	}

	.icon-button.blue > core-icon::shadow path {
		fill: #4285f4;
	}

	.icon-button.blue > paper-ripple {
		color: #4285f4;
	}

	/* FAB */
	.fab {
		position: relative;
		display: inline-block;
		width: 56px;
		height: 56px;
		border-radius: 50%;
		color: #fff;
		overflow: hidden;
		transition: box-shadow 0.2s cubic-bezier(0.4, 0, 0.2, 1);
		transition-delay: 0.2s;
		box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
	}

	.fab.red {
		background-color: #d23f31;
	}

	.fab.blue {
		background-color: #4285f4;
	}

	.fab.green {
		background-color: #0f9d58;
	}

	.fab:active {
		box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2);
		transition-delay: 0s;
	}

	.fab > core-icon {
		margin: 16px;
	}

	.fab > core-icon::shadow path {
		fill: #fff;
	}

	/* Menu */
	.menu {
		display: inline-block;
		width: 180px;
		background-color: #fff;
		box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2);
	}

	.item {
		position: relative;
		height: 48px;
		line-height: 48px;
		color: #646464;
		font-size: 0.9em;
	}

	.menu.blue > .item {
		color: #4285f4;
	}

	/* Card, Dialog */
	.card, .dialog {
		position: relative;
		display: inline-block;
		width: 300px;
		height: 240px;
		vertical-align: top;
		background-color: #fff;
		box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24);
	}

	.dialog {
		box-sizing: border-box;
		padding: 16px;
	}

	.dialog > .content {
		height: 170px;
		font-size: 0.9em;
	}

	.dialog > .content > .title {
		font-size: 1.3em;
	}

	.dialog > .button {
		width: 90px;
		float: right;
	}

	.card.image {
		background: url(http://lorempixel.com/300/240/nature/);
		color: #fff;
	}

	/* Misc */
	.center {
		text-align: center;
	}

	.label {
		padding: 0 16px;
	}

	.label-blue {
		color: #4285f4; 
	}

	.label-red {
		color: #d23f31; 
	}


</style>


<!--Grafico de Torta-->
<?php  

$query = "SELECT IF(controles.responsable=1, 'TISO','FISO')  AS Responsable,
CEILING(((SUM(referencias.status = 1)*100) / COUNT(referencias.id_control))) AS Promedio
FROM controles INNER JOIN referencias
ON controles.id_control = referencias.id_control
WHERE referencias.mes <= MONTH(CURRENT_DATE()) AND referencias.ano =  YEAR(CURRENT_DATE())
GROUP BY controles.responsable";

$result = mysqli_query($con, $query); 



?>

<!-- Gauge -->

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {'packages':['gauge']});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {

		var data = google.visualization.arrayToDataTable([
			['Responsable', 'Promedio'],
			<?php  
			while($row = mysqli_fetch_array($result))  
			{  
				echo "['".$row["Responsable"]."', ".$row["Promedio"]."],";  
			}  
			?>  
			]);

		var options = {
			width: 700, height: 500,
			redFrom: 0, redTo: 30,
			greenFrom: 90, greenTo: 100,
			yellowFrom:75, yellowTo: 90,
			minorTicks: 5
		};

		var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

		chart.draw(data, options);

		setInterval(function() {
			chart.draw(data, options);
		}, 13000);
		setInterval(function() {
			chart.draw(data, options);
		}, 5000);
	}
</script>


</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<?php $control_visible = false; include('nav.php');?>
	</nav>
	<center>
		<div class="container">
			<div class="content">
				<center><h2>Controles</h2></center>
				</br></br>
				<div class="table-responsive">
					<table class="table table-striped table-hover">
						<div onclick="openRealizados()" class="button raised green">
							<div class="center" fit>Realizados</div>
							<paper-ripple fit></paper-ripple>	
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<div onclick="openPendientes()" class="button raised red">
							<div class="center" fit>Pendientes</div>
							<paper-ripple fit></paper-ripple>
						</div>
					</table>
				</div>
				<br />	
			</div>
		</div>
	</center>
	<div class="container">
		<div class="content">
			<center><h2>Indicadores</h2></center>
		</div>
		<!--Table and divs that hold the pie charts-->
	</div>
	<center>
		<div class="container">
			<div id="chart_div" style="width: 900px; height: 600px;"></div>
		</div>
	</center>
	<center>
		<p>&copy; Gerencia de Seguridad de la Informacion <?php echo date("Y");?></p>
	</center>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
