<?php
require_once('conexion.php');

class Controlado extends Database {
	public function ControladoHastaLaFecha(){
		$result = $this->pdo->query('SELECT c.titulo, c.responsable, c.usuario, r.modificacion, r.mes 
									FROM referencias as r
									INNER JOIN controles as c ON c.id_control = r.id_control 
									WHERE r.status= 2 ORDER BY r.mes, c.responsable, c.titulo  ASC');
		return $result->fetchAll();
	}
}
