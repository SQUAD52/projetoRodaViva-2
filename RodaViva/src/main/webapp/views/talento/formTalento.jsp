<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Cadastro</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
	<script src="js/Cadastro.js"></script>
	<link rel="stylesheet" href="css/cadastro.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="/components/navbar.jsp">
		<jsp:param value="../assets/img/logoRodaVivaSemFundo.png"
			name="imglogo" />
		<jsp:param value="./" name="home" />
		<jsp:param value="../talento" name="talentos" />
		<jsp:param value="../curso" name="cursos" />
		<jsp:param value="../biblioteca" name="biblioteca" />
		<jsp:param value="../contato" name="contatos" />
		<jsp:param value="../empresa" name="empresas" />
		<jsp:param value="../talento-create" name="create-talentos" />
		<jsp:param value="../candidato-create" name="create-candidatos" />

	</jsp:include>

	
		<form action="../../talento-create" class="container-fluid" method="post" enctype="multipart/form-data">
			<fieldset >
				<legend class="my-3">Dados Pessoais</legend>
				<div class="form-group my-3">
					<label for="iNome" class="form-label">Nome:</label> <input
						type="text" id="iNome" name="nNome" class="form-control" />
				</div>

				<div class="form-group my-3">
					<label for="iCpf" class="form-label">CPF:</label> <input
						type="text" id="iCpf" name="nCPF" class="form-control" />
				</div>

				<div class="form-group my-3">
					<label for="iDataNascimento" class="form-label">Data Nasc.
						:</label> <input type="date" id="iDataNascimento" name="nDataNascimento"
						class="form-control" />
				</div>

				<div class="form-group my-3">
					<label for="iEmail" class="form-label">Email:</label> <input
						type="text" id="iEmail" name="nEmail" class="form-control" />
				</div>
				
				<div class="form-group my-3">
					<label for="iFormacao" class="form-label">Formações:</label> <input
						type="text" id="iFormacao" name="nFormacao" class="form-control" />
				</div>

				<div class="form-group my-3">
					<label for="iTelefone" class="form-label">Telefone:</label> <input
						type="text" id="iTelefone" name="nTelefone" class="form-control" />
				</div>
				
				<div class="form-group mb-3">
						<label for="iFoto">Foto:</label>
						<input type="file" class="form-control" id="iFoto" name="nFoto">
					</div>
			</fieldset>

			<fieldset>
				<legend>Logradouro</legend>
				
				<div class="form-group my-3">
					<label for="iCep" class="form-label">CEP:</label> <input
						type="text" id="iCep" name="nCep" class="form-control" />
				</div>
				
				<div class="form-group my-3">
					<label for="iEndereco" class="form-label">Endereço:</label> <input
						type="text" id="iEndereco" name="nEndereco" class="form-control" />
				</div>

				<div class="form-group my-3">
					<label for="iEstado" class="form-label">Estado:</label> <input
						type="text" id="iEstado" name="nEstado" class="form-control" placeholder="GO, DF, MT, AM, CE..." />
				</div>

				<div class="form-group my-3">
					<label for="iCidade" class="form-label">Cidade:</label> <input
						type="text" id="iCidade" name="nCidade" class="form-control" />
				</div>
			</fieldset>
			<input type="submit" class="btn btn-primary" value="Cadastrar">
			<a href="../../" class="btn btn-danger my-3">Cancelar</a>
		</form>

<footer class="container-fluid bg-black text-center pt-4 pb-1">
		<div class="socials">
			<a href="https://facebook.com/espacorodaviva"><i
				class="fa fa-facebook"></i></a> <a
				href="https://twitter.com/espacorodaviva"><i
				class="fa fa-twitter"></i></a> <a
				href="https://googleplus.com/espacorodaviva"><i
				class="fa fa-google-plus"></i></a> <a
				href="https://youtube.com.br/espacorodaviva"><i
				class="fa fa-youtube"></i></a> <a
				href="https://br.linkedin.com/espacorodaviva"><i
				class="fa fa-linkedin-square"></i></a> <a
				href="https://instagram.com/espacorodaviva"><i
				class="fa fa-instagram"></i></a>
		</div>
		<p class="socials-paragraph">&copy;2023 Espaço Roda Viva - SQUAD |
			52 - Todos os direitos reservados</p>
	</footer>


	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>