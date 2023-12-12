<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/footer.css">

<title>Home</title>
</head>

<body>
	<!--Inicio do cabeçalho-->
	<jsp:include page="/components/navbar.jsp">
		<jsp:param value="./assets/img/logoRodaVivaSemFundoPeq.png" name="logo" />
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


	<section class="container mb-5" style="margin-top: 110px;">
		<div class="container-fluid">
			<h1 class="fs-1 fw-bold"
				style="background-image: linear-gradient(90deg, #ffc107 0%, #00d4ff 100%); background-clip: text; -webkit-background-clip: text; -webkit-text-fill-color: transparent;">
				Encontre novas oportunidades</h1>
			<h2 class="fw-bold">para sua carreira</h2>
			<p class="mt-3">Aqui você pode encontrar os melhores talentos,
				contribua com diversidade e competitividade no mercado de trabalho.</p>
		</div>
		<div class="btn-group gap-1 flex-wrap mt-5">
			<a href="./talento-create"><button type="button"
					class="btn btn-light border-black">Cadastre-se como
					talento</button></a> <a href="./candidato-create"><button type="button"
					class="btn btn-warning">Candidatar à vagas</button></a>
		</div>
	</section>

	<section class="container mb-5">
		<div class="card-group gap-2">
			<div class="card border-0">
				<div class="card-body">
					<h4 class="text-center">Equipes remotas sob medida</h4>
					<p class="card-text">Profissionais de TI especialistas são
						recrutados e apresentados em menos tempo pelas empresas para se
						juntarem à área de sistemas de informação.</p>
				</div>
			</div>

			<div class="card border-0">
				<div class="card-body">
					<h4 class="text-center">Talentos qualificados</h4>
					<p class="card-text">Profissionais independentes se integraram
						a diversas equipes para colaborar em projetos a longo prazo,
						permitindo que o negócio ganhe escala.</p>
				</div>
			</div>

			<div class="card border-0">
				<div class="card-body">
					<h4 class="text-center">Variedade de habilidades</h4>
					<p class="card-text">Encontra-se o aliado estratégico para
						incorporar talentos super especializados à sua empresa, com perfis
						específicos por área e localidade.</p>
				</div>
			</div>


			<div class="card border-0">
				<div class="card-body">
					<h4 class="text-center">Escalabilidade e agilidade</h4>
					<p class="card-text">Os melhores talentos independentes
						trabalham em parceria com as equipes de diversas áreas diferentes
						em todos os níveis: de junior a senior.</p>

				</div>
			</div>
		</div>
	</section>

	<section class="bg-black py-5 mb-5">
		<div class="container">
			<h3 class="text-light text-center mb-5">Descubra especialista
				com as habilidades que você precisa</h3>


			<img src="<c:url value="../assets/img/img.jpg"/>"
				class="img-fluid rounded-start" alt="mulher estudando">

			<div class="card-body mt-5">

				<h5 class="card-title text-light my-4">TI</h5>

				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Programação</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Wordpress</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Programação
					de Apps para Android, IOS e outros</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">E-commerce</button>

				<h5 class="card-title text-light my-4">Design</h5>

				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Design
					de logo</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Web-design</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">UX-design</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Ilustrações</button>

				<h5 class="card-title text-light my-4">Marketing</h5>

				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Publicidade
					no Google, Facebok</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">SEO</button>
				<button type="button"
					class="btn btn-outline-light rounded-pill fs-sm m-1 p-2">Community
					Managenment</button>

			</div>
		</div>
	</section>

	<section class="container py-5">
		<h3 class="mb-5 text-center">Estatisticas Roda Viva</h3>
		<div class="card-group text-center">
			<div class="card mb-3 border-0">
				<div class="card-body">
					<h2 class="card-title">150</h2>
					<p class="card-text">Vagas abertas</p>
				</div>
			</div>
			<div class="card mb-3 border-0">
				<div class="card-body">
					<h2 class="card-title">250</h2>
					<p class="card-text">Candidatos contratados</p>
				</div>
			</div>
			<div class="card mb-3 border-0">
				<div class="card-body">
					<h2 class="card-title">50</h2>
					<p class="card-text">Empresas participantes</p>
				</div>
			</div>
			<div class="card mb-3 border-0">
				<div class="card-body">
					<h2 class="card-title">550</h2>
					<p class="card-text">Candidatos</p>
				</div>
			</div>
		</div>
	</section>

	<section class="container pb-5">
		<h3 class="text-center mb-5">Ultimas vagas enviadas</h3>
		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<img src="./assets/img/google.png" alt="google logo"
						class="img-fluid" style="max-width: 3rem;" />
				</div>
				<div class="col">
					<p class="fs-5 lh-1">Developer</p>
					<p>
						<b>Google</b>
					</p>
				</div>

				<div class="col">
					<div class="progress" role="progressbar" aria-valuenow="100"
						aria-valuemin="0" aria-valuemax="100" style="height: 25px;">
						<div class="progress-bar bg-primary" style="width: 100%">CLT</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<img src="./assets/img/ibm.png" alt="ibm logo" class="img-fluid"
						style="max-width: 3rem;">
				</div>
				<div class="col">
					<p class="fs-5 lh-1">DBA</p>
					<p>
						<b>IBM</b>
					</p>
				</div>

				<div class="col">
					<div class="progress" role="progressbar" aria-valuenow="100"
						aria-valuemin="0" aria-valuemax="100" style="height: 25px;">
						<div class="progress-bar bg-success" style="width: 100%">PJ</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<img src="./assets/img/linkedin.png" alt="linkedin logo"
						class="img-fluid" style="max-width: 3rem;">
				</div>
				<div class="col">
					<p class="fs-5 lh-1">Front End Developer</p>
					<p>
						<b>LinkedIn</b>
					</p>
				</div>

				<div class="col">
					<div class="progress" role="progressbar" aria-valuenow="100"
						aria-valuemin="0" aria-valuemax="100" style="height: 25px;">
						<div class="progress-bar bg-danger" style="width: 100%">HOME
							OFFICE</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<img src="./assets/img/facebook.png" alt="facebook logo"
						class="img-fluid" style="max-width: 3rem;">
				</div>
				<div class="col">
					<p class="fs-5 lh-1">Full Stack Developer</p>
					<p>
						<b>Facebook</b>
					</p>
				</div>

				<div class="col">
					<div class="progress" role="progressbar" aria-valuenow="100"
						aria-valuemin="0" aria-valuemax="100" style="height: 25px;">
						<div class="progress-bar bg-success" style="width: 100%">PJ</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="container mb-5">
		<h3 class="text-center mb-5">Alguns depoimentos sobre a
			experiência</h3>
		<div class="row row-cols-1 row-cols-md-4 g-4">
			<div class="col">
				<div
					class="card  align-items-center pt-3 pb-1 bg-body-tertiary shadow ">
					<div class="container-fluid d-inline-flex gap-2 align-items-center">
						<img src="./assets/img/img-homem (2).jpg"
							class="card-img-top rounded-circle" alt="..." style="width: 20%;">

						<p class="card-text lh-2">
							<small class="text-body-secondary"> <strong
								class="text-black">João</strong><br>Last updated 3 mins ago
							</small>
						</p>
					</div>

					<div class="card-body text-center">
						<p class="card-text">
							<i class="bi bi-quote"></i><em>Foi otima a minha esperiência
								com a plataforma. Conteúdo didático e otimas opotunidades de
								carreira.</em><i class="bi bi-quote"></i>
						</p>

					</div>
				</div>
			</div>
			<div class="col">
				<div
					class="card  align-items-center pt-3 pb-1 bg-body-tertiary shadow ">
					<div class="container-fluid d-inline-flex gap-2 align-items-center">
						<img src="./assets/img/img-mulher.jpg"
							class="card-img-top rounded-circle" alt="..." style="width: 20%;">

						<p class="card-text lh-2">
							<small class="text-body-secondary"> <strong
								class="text-black">Ana Carolina</strong><br>Last updated 3
								mins ago
							</small>
						</p>
					</div>

					<div class="card-body">
						<p class="card-text">
							<i class="bi bi-quote"></i><em>Foi otima a minha esperiência
								com a plataforma. Conteúdo didático e otimas opotunidades de
								carreira.</em><i class="bi bi-quote"></i>
						</p>

					</div>
				</div>
			</div>
			<div class="col">
				<div
					class="card  align-items-center pt-3 pb-1 bg-body-tertiary shadow ">
					<div class="container-fluid d-inline-flex gap-2 align-items-center">
						<img src="./assets/img/img-homem.jpg"
							class="card-img-top rounded-circle" alt="..." style="width: 20%;">

						<p class="card-text lh-2">
							<small class="text-body-secondary"> <strong
								class="text-black">Carlos</strong><br>Last updated 3 mins
								ago
							</small>
						</p>
					</div>

					<div class="card-body">
						<p class="card-text">
							<i class="bi bi-quote"></i><em>Foi otima a minha esperiência
								com a plataforma. Conteúdo didático e otimas opotunidades de
								carreira.</em><i class="bi bi-quote"></i>
						</p>

					</div>
				</div>
			</div>
			<div class="col">
				<div
					class="card align-items-center pt-3 pb-1 bg-body-tertiary shadow ">
					<div class="container-fluid d-inline-flex gap-2 align-items-center">
						<img src="./assets/img/img-mulher (2).jpg"
							class="card-img-top rounded-circle" alt="..." style="width: 20%;">

						<p class="card-text lh-2">
							<small class="text-body-secondary"> <strong
								class="text-black">Maria</strong><br>Last updated 3 mins
								ago
							</small>
						</p>
					</div>

					<div class="card-body">
						<p class="card-text">
							<i class="bi bi-quote"></i><em>Foi otima a minha esperiência
								com a plataforma. Conteúdo didático e otimas opotunidades de
								carreira.</em><i class="bi bi-quote"></i>
						</p>

					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="container-fluid bg-info-subtle py-4">
		<div class="container text-center">
			<div class="row">
				<div class="col">
					<p class="fw-bold">Áreas</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">TI
							e Programação</a>
					<p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Design
							e Multimídia</a>
					<p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Tradução
							e conteúdos</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Marketing
							e Vendas</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Suporte
							Administrativo</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Finanças
							e Administração</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Engenharia
							e Manufatura</a>
					</p>
				</div>
				<div class="col">
					<p class="fw-bold">Recursos</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Central
							de ajuda</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Como
							funciona</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Histórias
							de sucesso dos clientes</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Imprensa</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Empresas</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Tutoriais
							para clientes</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Mapa
							do site</a>
					</p>

				</div>
				<div class="col">
					<p class="fw-bold">Projetos</p>
					<div>
						<p class="lh-1">
							<a class="text-dark" style="text-decoration: none;" href="">Eventos</a>
						</p>
						<p class="lh-1">
							<a class="text-dark" style="text-decoration: none;"
								href="./parceiro">Parcerias</a>
						</p>
					</div>
					<p class="fw-bold">Quem somos?</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Sobre
							nós</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Una-se
							a Equipe</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Contato</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Política
							de privacidade</a>
					</p>
					<p class="lh-1">
						<a class="text-dark" style="text-decoration: none;" href="">Termos
							de serviço</a>
					</p>
				</div>
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
