<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Empresas</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./assets/css/footer.css">
<link rel="stylesheet" href="./assets/css/parceiros/estiloParceiros.css">
</head>

<body>
	<!--Inicio do cabeçalho-->
	<jsp:include page="/components/navbar.jsp">
		<jsp:param value="./" name="home" />
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
	<!--Cards para perfil-->

	<main class="container-fluid row" id="listaParceiros">

		<article class="col-sm" id="sectionPerfil">
			<section class="container-fluid row" id="corpoEmpresas">
				<div class="text-center text-muted my-3 row" id="msgTopo">
					<h1>Empresas Parceiras</h1>
				</div>
				<c:forEach items="${listaEmpresas}" var="empresa">

					<div class="col-sm border-bottom mb-3 ms-3 " style="width: 18em;">

						<h1 class="text-center">${empresa.nome }</h1>

						<hr />
						<p class="card-text">
							<label class="fw-bold">Telefone: </label> <label>${empresa.telefone }</label>
						</p>
						<hr>
						<p class="card-text">
							<label class="fw-bold">Email: </label> <label>${empresa.email }</label>
						</p>
						<p class="card-text">
							<label class="fw-bold">Vagas Disponíveis: </label> <label>${empresa.vagas }</label>
						</p>
						<hr>

						<div class="row">
							<a href="./candidato-create?id=${empresa.id }"
								class="btn btn-sm btn-primary">Candidatar-se</a> <a
								href="./empresa-update?id=${empresa.id }"
								class="btn btn-sm btn-warning">editar</a> <a
								href="./empresa-delete?id=${empresa.id }"
								onclick="return confirm('Deseja Excluir o usuario ${empresa.nome}?')"
								class="btn btn-sm btn-danger">excluir</a>
						</div>
					</div>
					


				</c:forEach>

			</section>
		</article>
	</main>






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

	<!-- script para abrir menu quando responsivo -->
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