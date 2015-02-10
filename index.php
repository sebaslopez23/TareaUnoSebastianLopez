<?php 
	include 'includes/conexion.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$peticion = "SELECT * FROM cursos ORDER BY idCurso ASC";
	$resultadoPeticion = mysqli_query($con,$peticion);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>LopezSebastian_Database</title>
	</head>
	<body>
		<!-- Select -->
		<form action="usuarios_curso.php" method="post">
		  Materias:<br/> 
		   <select name="curso">
		   <?php
			   	while ($row = mysqli_fetch_array($resultadoPeticion)) {  
					echo "<option value='".$row['idCurso']."'>".$row['nombreCurso'] ."</option>";
				}
			?>
		   </select>
		   <p><input type="submit" value="Aceptar" /></p>
		</form>
	</body>
</html>