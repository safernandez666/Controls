<?php
include("conexion.php");

session_start();

if (!isset($_SESSION['usuario'])){
	header('Location: index.html');
}

?>

<div class="container">
	<div class="navbar-header">
		<ul class="nav-left nav nav-tabs">
			<li class="nav-item" id="logo"><img src="img/logo.png" /></li>
			<li class="nav-item"><a class="nav-link" href="index.php">Inicio</a></li>
			<?php if ($control_visible != null && $control_visible)
			echo '<li class="nav-item"><a class="nav-link" href="add.php">Control</a></li>'
			?>
			<li class="nav-item"><a class="nav-link" href="reporte.php">Reporte</a></li>
		</ul>
		<ul class="nav-right nav nav-tabs">
			<li class="nav-item"><a class="nav-link"><?php echo $_SESSION['usuario']?></a></li>
			<?php if (isset($_SESSION['usuario']))
			echo '<li class="nav-item"><a class="nav-link" href="out.php">Salir</a></li>'
			?>
		</ul>
	</div>
</div>
