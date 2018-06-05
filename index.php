<?php	


	include_once("conexao.php");

	$html = '<table border=0.5';	
	$html .= '<thead>';
	$html .= '<tr>';
	$html .= '<th>ID</th>';
	$html .= '<th>Nome</th>';
	$html .= '<th>Senha</th>';
	$html .= '<th>E-mail</th>';
	$html .= '<th>Situação</th>';
	$html .= '</tr>';
	$html .= '</thead>';
	$html .= '<tbody>';

	$result_usuarios = "SELECT * FROM usuarios";
	$resultado_usuarios = mysqli_query($conn, $result_usuarios);
	while ($row_usuarios = mysqli_fetch_assoc($resultado_usuarios)) {
		$html .= '<tr><td>'.$row_usuarios['id'] . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['nome']) . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['senha']) . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['email']) . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['situacao']) . "</td></tr>";
	}
	
	$html .= '</tbody>';
	$html .= '</table';

	//referenciar o DomPDF com namespace
	use Dompdf\Dompdf;

	// include autoloader
	require_once("dompdf/autoload.inc.php");

	//Criando a Instancia
	$dompdf = new DOMPDF();

	// Carrega seu HTML
	$dompdf->load_html('
			<h1 style="text-align: center;">Relatório de Membros - CPA</h1>
			'. $html .'
		');

	//Renderizar o html
	$dompdf->render();

	//Exibibir a página
	$dompdf->stream(
		"relatorio_membros_cpa.pdf", 
		array(
			"Attachment" => false //Para realizar o download somente alterar para true
		)
	);
?>