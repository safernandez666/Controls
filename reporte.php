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
	<div class="container">
		<div class="content">
			<center><h2>Balanced Scorecard</h2></center>
			<hr />
			<br />	
		</div>
		<!--Table and divs that hold the pie charts-->
		<br /><br />
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
