<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Talentos</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./assets/css/footer.css">
<link rel="stylesheet" href="./assets/css/Talentos.css">
</head>

<body>
	<!--Inicio do cabeçalho-->
	<jsp:include page="/components/navbar.jsp">
		<jsp:param value="./assets/img/logoRodaVivaSemFundo.png" name="imglogo" />
		<jsp:param value="./" name="home" />
		<jsp:param value="./talento" name="talentos" />
		<jsp:param value="./curso" name="cursos" />
		<jsp:param value="./biblioteca" name="biblioteca" />
		<jsp:param value="./contato" name="contatos" />
		<jsp:param value="./empresa" name="empresas" />
		<jsp:param value="./talento-create" name="create-talentos" />
		<jsp:param value="./candidato-create" name="create-candidatos" />

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
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Waschington Rodrigo</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Cidade
										Ocidental</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">GO</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">35
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(61)
										992090318</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">chitonbispo@gmail.com</span>
								</p>
							</div>
						</div>
						<div class="card-footer bg-info" id="footer-perfil">
							<h5 class="text-muted text-center">Engenharia Eletrica</h5>
						</div>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Leandro Augusto</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">São
										Paulo</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">SP</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">32
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(11)
										994651318</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">leandroAugusto@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Agronomia</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">João Gustavo</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Fortaleza</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">CE</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">30
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(85)
										986424118</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">jgustavo@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Medicina Veterinária</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Cassandra Helena</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">São
										Luiz</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">MA</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">25
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Feminino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(99)
										981356154</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">Cassandrahlna@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Enfermagem</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Leonardo da Vinci</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Goiânia</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">GO</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">48
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(62)
										981564876</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">Leodavinci@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Artes Plásticas</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Juliana Rodrigues</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Cascavél</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">PR</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">32
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Feminino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(43)
										995640318</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">Julianarodrig@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Ciências Contábeis</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Rodrigo Goes</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Sobradinho</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">DF</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">21
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(61)
										982154879</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">Rodigogoes@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Administração</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Itanábia Castro</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Manaus</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">AM</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">41
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Feminino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(97)
										981457695</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">Itanabiaindia@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Direito</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Renata Silva</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Bernado
										Sayão</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">TO</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">25
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Feminino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(63)
										985463214</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">Resilva@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Jornalismo e Economia</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">VItor Armélio</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Rio
										de Janeiro</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">RJ</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">35
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(21)
										987546325</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">vitorarmelio@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Radio e tv</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Junior Santos</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Barreiras</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">BA</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">33
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(73)
										984653215</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">Jsantos@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Psicologia</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Sebastiana Reis</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">São
										João D'aliança</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">GO</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">50
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Feminino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(61)
										999456325</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">donatiana@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center col-sm">Arquitetura e
							Urbanismo</h5>
					</div>
				</div>
				<div class="card border-dark col-md-5 bg-info" id="card-perfil">
					<div class="card-header text-center bg-success text-light">
						<h5 class="card-title">Waschington Rodrigo</h5>
					</div>
					<div class="card">
						<!--imagem do fundo do card-->
						<img id="fundo" class="card-img"
							src="img/img-Talentos/Fundo-CardH.png" alt="imagem de fundo ">
						<div class="card-body card-img-overlay">
							<div class="row mb-3">
								<div class="col-sm-8">
									<span class="fw-bold">Cidade:</span> <span class="text-muted">Cidade
										Ocidental</span>
								</div>
								<div class="col-sm-4">
									<span class="fw-bold">UF:</span> <span class="text-muted">GO</span>
								</div>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Idade:</span> <span class="text-muted">35
										anos</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Sexo:</span> <span class="text-muted">Masculino</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">Contato:</span> <span class="text-muted">(61)
										992090318</span>
								</p>
							</div>
							<div class="row">
								<p>
									<span class="fw-bold">E-mail:</span> <span class="text-muted">chitonbispo@gmail.com</span>
								</p>
							</div>
						</div>
					</div>
					<div class="card-footer bg-info">
						<h5 class="text-muted text-center">Relações Públicas</h5>
					</div>
				</div>
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
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>

</body>

</html>