<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Biblioteca</title>


<link rel="stylesheet" href="../assets/css/footer.css">
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">

</head>

<body>
	<!--Inicio do cabeçalho-->
	<jsp:include page="/components/navbar.jsp">
		<jsp:param value="../assets/img/logoRodaVivaSemFundoPeq.png"
			name="logo" />
		<jsp:param value="../home" name="home" />
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
			<div class="btn-group gap-1">
				<div class="btn-group">
					<button type="button"
						class="btn btn-secondary dropdown-toggle btn-sm"
						data-bs-toggle="dropdown" aria-expanded="false">Autor(a)
					</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">José Carlos Morais</a></li>
						<li><a class="dropdown-item" href="#">Christopher Reeve</a></li>
						<li><a class="dropdown-item" href="#">Dick Hoyt e Don
								Yaeger</a></li>
						<li><a class="dropdown-item" href="#">Katia Yuriko</a></li>
						<li><a class="dropdown-item" href="#">Lars Grael</a></li>
						<li><a class="dropdown-item" href="#">Richard Galli</a></li>
						<li><a class="dropdown-item" href="#">Marcelo Rubens
								Paiva</a></li>
						<li><a class="dropdown-item" href="#">Sérgio Nardini</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button"
						class="btn btn-secondary dropdown-toggle btn-sm"
						data-bs-toggle="dropdown" aria-expanded="false">
						Categoria</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Livro</a></li>
						<li><a class="dropdown-item" href="#">Video</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button"
						class="btn btn-secondary dropdown-toggle btn-sm"
						data-bs-toggle="dropdown" aria-expanded="false">Nota</button>
					<ul class="dropdown-menu">

						<li><a class="dropdown-item" href="#"><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i></a></li>

						<li><a class="dropdown-item" href="#"><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star"></i></a></li>

						<li><a class="dropdown-item" href="#"><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star"></i><i
								class="bi bi-star"></i></a></li>

						<li><a class="dropdown-item" href="#"><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star"></i><i class="bi bi-star"></i><i
								class="bi bi-star"></i></a></li>

						<li><a class="dropdown-item" href="#"><i
								class="bi bi-star-fill"></i><i class="bi bi-star"></i><i
								class="bi bi-star"></i><i class="bi bi-star"></i><i
								class="bi bi-star"></i></a></li>
					</ul>
				</div>
			</div>

		</div>
	</section>

	<section class="container-fluid bg-body-tertiary py-5">

		<section class="container pb-5">
			<div class=" row row-cols-1 row-cols-md-3 g-3">
				<div class="col">
					<div class="card h-100">
						<iframe
							src="https://www.youtube.com/embed/-bgA4r-Qnbg?si=QYoEf5kNMOTanTrM"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							allowfullscreen></iframe>
						<div class="card-body">
							<h6 class="card-title">Inclusão e acessibilidade: Flávio
								Arruda at TEDxFortaleza</h6>

						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<iframe
							src="https://www.youtube.com/embed/XjHBzDGrrlE?si=6_L5Cq-DHEJnZyC2"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							allowfullscreen></iframe>
						<div class="card-body">
							<h6 class="card-title">Especial acessibilidade: Inclusão no
								mercado de trabalho.</h6>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<iframe
							src="https://www.youtube.com/embed/CI_uIB8Uv6U?si=SM4wld7K9BkHGw8h"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							allowfullscreen></iframe>
						<div class="card-body">
							<h6 class="card-title">Inclusão de Pessoas com Deficiência
								no mercado de trabalho</h6>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<iframe
							src="https://www.youtube.com/embed/zNLg26tL-xE?si=cPpS_3VC3PnUlmhO"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							allowfullscreen></iframe>
						<div class="card-body">
							<h6 class="card-title">A Inclusão do Deficiente no Mercado
								de Trabalho | Ana Silvia Marcatto Begalli</h6>
						</div>
					</div>
				</div>
			</div>
		</section>



		<div class="card-group container">
			<div class="row row-cols-1 row-cols-md-4 g-3 text-center">
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/roda viva.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class="card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
							<h6 class="card-title">Roda Viva: Memórias de um cadeirante</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por José Carlos
									Morais</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/ainda sou eu. memorias.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class="card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
							<h6 class="card-title">Ainda sou eu. Memórias</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por Christopher Reeve</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/devoção.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class="card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
							<h6 class="card-title">Devoção</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por Dick Hoyt e Don
									Yaeger</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/do outro loda do sol.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class="card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
							<h6 class="card-title">Do outro lado do sol</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por Katia Yuriko</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/saga de campeão.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class=" card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
							<h6 class="card-title">A saga de um campeão</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por Lars Grael</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/salvando meu filho.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class=" card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star"></i>
							<h6 class="card-title">Salvando meu filho</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por Richard Galli</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/feliz ano velho.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class=" card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star"></i>
							<h6 class="card-title">Feliz ano velho</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por Marcelo Rubens
									Paiva</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 shadow align-items-center pt-3">
						<img src="../assets/img/img-livros/pai de rodinhas.jpg"
							class="card-img-top" alt="..."
							style="max-height: 220px; max-width: 120px;">
						<div class=" card-body">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
							<h6 class="card-title">Pai de rodinhas</h6>
							<p class="card-text">
								<small class="text-body-secondary">Por Sérgio Nardini</small>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-end mt-4">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
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