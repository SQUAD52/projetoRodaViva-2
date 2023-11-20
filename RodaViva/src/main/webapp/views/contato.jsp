<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Contato</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/footer.css">
</head>

<body>
	<!--Inicio do cabeçalho-->
	<jsp:include page="/components/navbar.jsp">
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

	<main>
		<section>
			<div class="card card-profile shadow pb-2" id="fale-conosco"
				style="margin: 30px; margin-top: 100px;">
				<div class="px-4">
					<div class="row justify-content-center mt-3 pb-2">
						<div class="col-md-12  text-center mb-4">
							<h1 class="fw-bold">Fale conosco</h1>
							<span>Deixe sua pergunta, mensagem ou sugestão.</span>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input class="form-control nome" id="nome" placeholder="Nome"
									type="text">
							</div>
							<div class="form-group">
								<input class="form-control email" id="email" placeholder="Email"
									type="email">
							</div>
							<div class="form-group">
								<input class="form-control telefone phone-mask" id="telefone"
									placeholder="Telefone" type="text">
							</div>
							<div class="form-group">
								<input class="form-control empresa " id="empresa"
									placeholder="Empresa" type="text">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input class="form-control assunto " id="tx-assunto"
									placeholder="Assunto" type="text">
							</div>
							<div class="form-group mb-4">
								<textarea class="form-control  mensagem " name="name" rows="8"
									cols="80" id="mensagem" placeholder="Digite sua mensagem..."></textarea>
							</div>
							<div class="form-group my-4">
								<div data-sitekey="6LeINL8lAAAAAFBSUFmlvzJOydRFJewFMqgd5qhI"
									class="g-recaptcha">
									<div style="width: 304px; height: 78px;">
										<div>
											<iframe title="reCAPTCHA"
												src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LeINL8lAAAAAFBSUFmlvzJOydRFJewFMqgd5qhI&amp;co=aHR0cHM6Ly93d3cuZGVmaWNpZW50ZW9ubGluZS5jb20uYnI6NDQz&amp;hl=pt-BR&amp;v=x19joXI_IeQnFJ7YnfDapSZq&amp;size=normal&amp;cb=t32yaq4ikb27"
												width="304" height="78" role="presentation"
												name="a-eduu8eqcsftk" frameborder="0" scrolling="no"
												sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe>
										</div>
										<textarea id="g-recaptcha-response"
											name="g-recaptcha-response" class="g-recaptcha-response"
											style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea>
									</div>
									<iframe style="display: none;"></iframe>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary" type="submit">Enviar</button>
						</div>
					</div>
				</div>
			</div>
		</section>
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