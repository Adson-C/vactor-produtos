<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>

<title>Vector Cadastro de Produtos</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="projeto feito em JsP" />
<meta name="author" content="AdsonSantos" />


<link
	href="https://code.jquery.com/ui/1.9.1/themes/smoothness/jquery-ui.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">



<style type="text/css">
body {
	background-color: #F5F5DC;
}

form {
	position: absolute;
	top: 30%;
	left: 33%;
	right: 33%;
}

h1 {
	position: absolute;
	top: 20%;
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

	<form action="<%=request.getContextPath()%>/ServletFom" method="post" class="row g-3 needs-validation" novalidate id="formUser">



		<div class="col-sm-4">
			<label class="col-sm-4 col-form-label">Código:</label> <input
				class="form-control" type="text" name="id" id="id"
				required="required" value="${produtomodel.id}">
			<div class="invalid-feedback">Obrigatório</div>
		</div>

		<div class="mb-3">
			<label class="form-label">Descrição:</label> <input
				class="form-control" type="text" name="descricao" id="descricao"
				required="required" value="${produtomodel.descricao}">
			<div class="invalid-feedback">Obrigatório</div>

		</div>
		<div class="mb-3">
			<label class="form-label">Valor:</label> <input class="form-control"
				type="text" name="valor" id="valor" required="required"
				value="${produtomodel.valor}">
				
			<div class="invalid-feedback">Obrigatório</div>
		</div>

		<div class="col-12">
			<button type="button" class="btn btn-primary waves-effect waves-light" onclick="limparForm();" >Novo</button>
			<button class="btn btn-success waves-effect waves-light">Salvar</button>
		</div>


	</form>


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	
	         
	<script type="text/javascript">

	function limparForm() {
	    
	    var elementos = document.getElementById("formUser").elements; /*Retorna os elementos html dentro do form*/
	    
	    for (p = 0; p < elementos.length; p ++){
		    elementos[p].value = '';
	    }
	}
	
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