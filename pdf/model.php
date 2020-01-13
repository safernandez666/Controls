<?php
require_once('conexion.php');

class Controlado extends Database {
	public function ControladoHastaLaFecha(){
		$result = $this->pdo->query('SELECT c.titulo, c.responsable, c.usuario, r.modificacion, r.mes 
									FROM referencias as r
									INNER JOIN controles as c ON c.id_control = r.id_control 
									WHERE r.mes <= MONTH(CURRENT_DATE()) AND r.status= 1 AND r.ano = YEAR(CURRENT_DATE()) ORDER BY c.responsable, c.titulo, r.mes ASC');
		return $result->fetchAll();
	}
}
