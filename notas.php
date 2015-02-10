<?php 
	include 'includes/conexion.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$usuarioEscogido = $_POST["usuario"];
	$materiaEscogida = $_POST["curso"];
	$peticion = "SELECT tn.nombreNota, tn.porcentajeNota, n.valor FROM tipo_nota AS tn , notas AS n WHERE tn.idTipo=n.idTipo AND n.idUsuario=$usuarioEscogido AND n.idCurso=$materiaEscogida";
	$nombreUsuario = "SELECT nombreUsuario FROM usuarios WHERE idUsuario=".$usuarioEscogido;

	$resultadoPeticion = mysqli_query($con,$peticion);
	$resultadoNombreUsuario = mysqli_query($con,$nombreUsuario);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>LopezSebastian_Database</title>
	</head>
	<body>
		<!-- Select -->
		
		   <?php
		   		$row = mysqli_fetch_array($resultadoNombreUsuario);


		   		echo"Notas de ".$row['nombreUsuario'];

			  while ($row = mysqli_fetch_array($resultadoPeticion)) {  
			  	$valorNotaIndividual=$row['valor']*$row['porcentajeNota'];
					echo "<option value='".$row['idNota']."'>".$row['nombreNota']." ".$row['valor']."</option>";
				$notaDefinitiva+=$valorNotaIndividual;

				}
				echo "Nota Definitiva:".$notaDefinitiva;
			?>
		   
	</body>
</html>