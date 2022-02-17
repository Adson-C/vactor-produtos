<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Vector Cadastro de Produtos</title>

<style type="text/css">
body {
	background-color: #F5F5DC;
}

form {
	position: absolute;
	top: 40%;
	left: 33%;
	right: 33%;
}

h1 {
	position: absolute;
	top: 30%;
	left: 30%;
	color: green;
}

.btn {
	box-shadow: 5px 10px 10px #000;
}

label {
	color: #556B2F;
	font-weight: bold;
}
</style>


</head>
<body>

	<h1>Cadastro de Produtos</h1>

	<form action="ServletFom" method="post"
		class="row g-3 needs-validation" novalidate>


		<div class="col-md-2">
			<label class="form-label">Id:</label> <input class="form-control"
				type="text" name="id" id="id" required="required">
			<div class="invalid-feedback">Obrigatório</div>
		</div>

		<div class="col-md-5">
			<label class="form-label">Descrição:</label> <input
				class="form-control" type="text" name="descricao" id="descricao"
				required="required">
				<div class="invalid-feedback">Obrigatório</div>

		</div>
		<div class="col-md-3">
			<label class="form-label">Valor:</label> <input class="form-control"
				type="text" name="valor" id="valor" required="required">
				<div class="invalid-feedback">Obrigatório</div>
		</div>

		<div class="col-12">
			<button type="submit" class="btn btn-primary">Salvar</button>
			<button type="reset" class="btn btn-primary">Limpar</button>
		</div>


	</form>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		//Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}

					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>


</body>
</html>