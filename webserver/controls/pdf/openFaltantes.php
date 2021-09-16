<?php

require('fpdf/fpdf.php');
require('modelFal.php');


$controles = new Controlado();

$fpdf = new FPDF();
$fpdf->AddPage('portrait', 'A4');


class pdf extends FPDF
{
	public function header()
	{
		$this->Image('images/borde.png',-5, 35, 0, 0, 'png');
		$this->Image('images/leon.png', 170, 5, 30, 25, 'png');
		$this->SetY(40);
	}
	public function footer()
	{
		$this->SetY(-10);
		$this->AliasNbPages();
		$this->Cell(0, 5, $this->PageNo().'/{nb}', 0, 0, 'C');
		$this->Image('images/caja.jpeg', 180, 270, 18, 18, 'jpeg');
	}
}

$controlesConFecha = $controles->ControladoHastaLaFecha(10);

$fpdf = new pdf();
$fpdf->SetTitle('Controles Faltantes');
$fpdf->AddPage('portrait', 'A4');
$fpdf->SetFont('Helvetica', 'B', 12);
$ano = date("Y");
$fpdf->Cell(0, 5,'Listado de Controles Faltantes '.$ano, 0, 0, 'C');
$fpdf->Ln(20);

//Encabezado
$fpdf->SetFont('Helvetica','B',10);
$fpdf->SetFillColor(255,255,255);
$fpdf->SetX(20);
$fpdf->Cell(80, 10, 'Control', 0, 0, 'C', 1);
$fpdf->Cell(40, 10, 'Responsable', 0, 0, 'C', 1);
$fpdf->Cell(40, 10, 'Mes', 0, 0, 'C', 1);

//Linea
$fpdf->SetDrawColor(188,36,25);
$fpdf->SetLineWidth(1);
$fpdf->Line(25, 70, 185, 70);


//Contenido
$fpdf->SetFillColor(240,240,240);
$fpdf->SetTextColor(40,40,40);
$fpdf->SetDrawColor(255,255,255);
$fpdf->SetFont('Helvetica');
$fpdf->Ln(12);
$i = 1;
//Tabla
foreach ($controlesConFecha as $control) {
	$fpdf->SetX(25);
	//Colores Tabla
	if($i % 2 == 0)
	{
		$fpdf->SetFillColor(255,255,255);
	}
	else
	{
		$fpdf->SetFillColor(200,200,200);
	}
	$fpdf->Cell(70, 10, $control->titulo, 0, 0, '', 1);
	if ($control->responsable == 1)
		$resp = 'TISO';
	else
		$resp = 'FISO';
	$fpdf->Cell(50, 10, $resp, 0, 0, 'C', 1);
	$mes = $control->mes;
	switch ($mes) {

		case '1':
		$mes = 'Enero';
		break;

		case '2':
		$mes = 'Febrero';
		break;

		case '3':
		$mes = 'Marzo';
		break;

		case '4':
		$mes = 'Abril';
		break;

		case '5':
		$mes = 'Mayo';
		break;

		case '6':
		$mes = 'Junio';
		break;

		case '7':
		$mes = 'Julio';
		break;

		case '8':
		$mes = 'Agosto';
		break;

		case '9':
		$mes = 'Septiembre';
		break;

		case '10':
		$mes = 'Octubre';
		break;

		case '11':
		$mes = 'Noviembre';
		break;

		case '12':
		$mes = 'Diciembre';
		break;

		default:
		break;

	}
	$i++;
	$fpdf->Cell(40, 10, $mes, 0, 0, '', 1);
	$fpdf->Ln();
}


$fpdf->Output();
