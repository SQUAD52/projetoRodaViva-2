<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
<script src="js/Cadastro.js"></script>
<link rel="stylesheet" href="./assets/css/cadastro.css">
<link rel="stylesheet" href="./assets/css/footer.css">
<meta charset="ISO-8859-1">
<title>Editar Candidato</title>
</head>
<body>
	<!--Inicio do cabe�alho-->
	<jsp:include page="/components/navbar.jsp">
		<jsp:param value="./assets/img/logoRodaVivaSemFundoPeq.png"
			name="logo" />
		<jsp:param value="./home" name="home" />
		<jsp:param value="./talento" name="talentos" />
		<jsp:param value="./curso" name="cursos" />
		<jsp:param value="./biblioteca" name="biblioteca" />
		<jsp:param value="./contato" name="contatos" />
		<jsp:param value="./empresa" name="empresas" />
		<jsp:param value="./candidato" name="candidatos" />
		<jsp:param value="./talento-create" name="create-talentos" />
		<jsp:param value="./candidato-create" name="create-candidatos" />
		<jsp:param value="./empresa-create" name="create-empresas" />

	</jsp:include>

	<div class="container">
		<form action="./candidato-update" class="" method="post"
			style="margin-top: 110px">

			<fieldset>
				<legend>Dados para Candidatar � vagas</legend>

				<div class="form-group my-3">
					<label for="iId" class="form-label">Id:</label> <input type="text"
						id="iId" name="nId" class="form-control" value="${candidato.id }"
						readonly required />
				</div>

				<div class="form-group my-3">
					<label for="iCargo" class="form-label">Cargo:</label> <input
						type="text" id="iCargo" name="nCargo" class="form-control"
						value="${candidato.cargo }" required />
				</div>

				<div class="form-group my-3">
					<label for="iCPFTalento" class="form-label">CPF:</label> <input
						type="text" id="iCPFTalento" name="nCpfTalento"
						class="form-control"
						placeholder="� necessario ter cadastro de Talento para se canditatar � vagas!"
						maxlength="11" value="${candidato.talento.cpf }" required />
				</div>

				<div class="form-group my-3">
					<label for="iEmpresa" class="form-label">Empresa:</label> <select
						id="iEmpresa" name="nEmpresa">
						<c:forEach items="${listaEmpresas }" var="empresa">
							<option value="${empresa.id }">${empresa.nome}/
								${empresa.cidade }</option>
						</c:forEach>
					</select>
				</div>



			</fieldset>
			<input type="submit" class="btn btn-primary" value="Atualizar">
			<a href="./" class="btn btn-danger">Cancelar</a>
		</form>
	</div>


	<footer
		class="container-fluid bg-black text-center pt-4 pb-1 fixed-bottom">
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
		<p class="socials-paragraph">&copy;2023 Espa�o Roda Viva - SQUAD |
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