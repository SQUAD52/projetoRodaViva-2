<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8" />
<title>Talentos</title>
<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/footer.css">
<link rel="stylesheet" href="./assets/css/Talentos.css">

</head>

<body>
	<!--Inicio do cabeçalho-->
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
	<!--Cards para perfil-->

	<main class="container-fluid row">
		<aside class=" bg-dark text-light col-sm-3">
			<div class="row text-center">
				<p class="fw-bold fs-5">Qualificação</p>
			</div>
			<div class="row text-center">
				<p>Administração</p>
			</div>
			<div class="row text-center">
				<p>Agronomia</p>
			</div>
			<div class="row text-center">
				<p>Ciencias Contábeis</p>
			</div>
			<div class="row text-center">
				<p>Direito</p>
			</div>
			<div class="row text-center">
				<p>Engenharia</p>
			</div>
			<div class="row text-center">
				<p>Enfermagem</p>
			</div>
			<div class="row text-center">
				<p>Medicina</p>
			</div>
		</aside>
		<article class="col-sm" id="sectionPerfil">
			<section class="container-fluid row" id="corpoTalentos">
				<div class="text-center text-muted my-3 row" id="msgTopo">
					<h1>Aqui você encontra os melhores perfil para contribuir na
						sua empresa.</h1>
				</div>
				<c:forEach items="${listaTalentos}" var="talento">
					<div class="card mb-3 mx-3 border-dark" style="width: 18rem">

						<div class="card-header fw-bold text-center">${talento.nome}</div>
						<div class="card-body">
							<p>
								<label class="fw-bold">Telefone: </label> <label>${talento.telefone }</label>
							</p>
							<hr>
							<p>
								<label class="fw-bold">Email: </label> <label>${talento.email }</label>
							</p>
							<hr>
							<p class="card-text">
								<label class="fw-bold">Formações e Cursos: </label> <label>${talento.formacao}</label>
							</p>

							<hr>
							<p>
								<label class="fw-bold">Cidade: </label> <label>${talento.cidade }</label>
							</p>
							<hr>
							<p>
								<label class="fw-bold">Estado: </label> <label>${talento.estado }</label>
							</p>


						</div>
						<div class="card-footer text-body-secondary text-center">
							<a href="./candidato-create2?id=${talento.id }"
								class="btn btn-sm btn-primary">Contratar</a> <a
								href="./talento-update?id=${talento.id }"
								class="btn btn-sm btn-warning">editar</a> <a
								href="./talento-delete?id=${talento.id }"
								onclick="return confirm('Deseja Excluir o usuario ${talento.nome}?')"
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