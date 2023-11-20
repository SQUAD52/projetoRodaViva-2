<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./assets/css/footer.css">

<script src="./assets/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<title>Lista de Candidatos</title>
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

	<div class="container-fluid">

		<table class="table table-responsive table-hover">
			<thead class="table-dark">
				<tr class="text-center">
					<th scope="col">Id</th>
					<th scope="col">Talento</th>
					<th scope="col">Empresa</th>
					<th scope="col">Cargo</th>
					<th scope="col">Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listaCandidatos}" var="candidato">
					<tr class="text-center">
						<th scope="row">${candidato.id}</th>
						<td>${candidato.talento.nome}</td>
						<td>${candidato.empresa.nome}</td>
						<td>${candidato.cargo}</td>
						<td>
							<div class=text-center>
								<a href="./candidato-update?id=${candidato.id}"
									class="btn btn-warning btn-sm ">Editar</a> <a
									href="./candidato-delete?id=${candidato.id}"
									onclick="return confirm('Deseja Excluir a candidato para ${candidato.empresa.cidade} de ${candidato.talento.nome }?')"
									class="btn btn-danger btn-sm">Excluir</a>
							</div>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

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