<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Cursos</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="../assets/css/footer.css">
</head>

<body>
	<!--Inicio do cabeçalho-->
	<jsp:include page="/components/navbar.jsp">
		<jsp:param value="../assets/img/logoRodaVivaSemFundo.png"
			name="imglogo" />
		<jsp:param value="./" name="home" />
		<jsp:param value="../talento" name="talentos" />
		<jsp:param value="../curso" name="cursos" />
		<jsp:param value="../biblioteca" name="biblioteca" />
		<jsp:param value="../contato" name="contatos" />
		<jsp:param value="../empresa" name="empresas" />
		<jsp:param value="../candidato" name="candidatos" />
		<jsp:param value="../talento-create" name="create-talentos" />
		<jsp:param value="../candidato-create" name="create-candidatos" />
		<jsp:param value="../empresa-create" name="create-empresas" />


	</jsp:include>

	<section class="container-fluid bg-info" style="padding-top: 110px;">
		<div class="container py-3">
			<div class="input-group mb-3">
				<input type="text" class="form-control"
					placeholder="Buscar por titulo" aria-label="Recipient's username"
					aria-describedby="button-addon2">
				<button class="btn btn-warning" type="button" id="button-addon2">
					<i class="bi bi-search"></i>
				</button>
			</div>
		</div>
	</section>
	<section class="container py-5">
		<div class="row row-cols-1 row-cols-md-4 g-5 text-center">
			<div class="col">
				<a class="text-dark"
					href="https://recode.org.br/desenvolvimento-web-basico/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/desenvolvimento web.jpeg"
							class="img-fluid" alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Desenvolvimento Web</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark"
					href="https://recode.org.br/analise-de-dados-com-ferramentas-de-business-intelligence/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/power BI.jpeg" class="img-fluid"
							alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Power BI</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark"
					href="https://recode.org.br/metodologias-ativas/" target="_blank"
					style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/metodoligias ativas.jpeg"
							class="img-fluid" alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Metodologias Ativas</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark" href="https://recode.org.br/powerplatform/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/power plataform.jpeg" class="img-fluid"
							alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Power Plataform</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark"
					href="https://recode.org.br/desenvolvimento-de-games-basico/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/desenvolvimento de games.jpeg"
							class="img-fluid" alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Desenvolvimento de Games</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark"
					href="https://recode.org.br/criando-infra-na-nuvem/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/criar infra na nuvem.jpeg"
							class="img-fluid" alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Infra na Nuvem</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark"
					href="https://recode.org.br/ferramentas-digitais-para-o-mercado-de-trabalho/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/ferramentas digitais.jpeg"
							class="img-fluid" alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Ferramentas Digitais</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark"
					href="https://recode.org.br/gestao-e-empregabilidade/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/gestão e empregabilidade.jpeg"
							class="img-fluid" alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Gestão e Empregabilidade</h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col">
				<a class="text-dark" href="https://recode.org.br/programacao/"
					target="_blank" style="text-decoration: none;">
					<div class="card rounded-3">
						<img src="./img/img-cursos/programação.jpeg" class="img-fluid"
							alt="thumbnail curso">
						<div class="card-body">
							<h6 class="card-title">Programação</h6>
						</div>
					</div>
				</a>
			</div>
		</div>
	</section>

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
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>

</body>

</html>