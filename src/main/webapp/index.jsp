<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Vector</title>
</head>
<body>

<form action="ServletFom" method="post">

		<table width="200" cellpadding="10" align="center">
			<tr>
				<td>Id:</td>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			
			<tr>
				<td>Descrição:</td>
				<td><input type="text" name="descricao" id="descricao"></td>
			</tr>
			
			<tr>
				<td>Valor:</td>
				<td><input type="text" name="valor" id="valor"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Salvar"></td>
				<td><input type="reset" value="Limpar"></td>
			</tr>

		</table>

	</form>		
		
	

</body>
</html>