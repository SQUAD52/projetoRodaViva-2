<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<header
	class="navbar navbar-expand-lg bg-info-subtle shadow-sm fixed-top">
	<div class="container-fluid">

		<a class="navbar-brand" href=<%=request.getParameter("home")%>> <img
			src=<%=request.getParameter("logo")%>>
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!--Inicio do menu-->
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link" aria-current="page"
					href=<%=request.getParameter("home")%>>Home</a></li>
				<li class=" nav-item"><a class="nav-link"
					href=<%=request.getParameter("talentos")%>>Talentos</a></li>
				<li class="nav-item"><a class="nav-link"
					href=<%=request.getParameter("cursos")%>>Cursos</a></li>
				<li class="nav-item"><a class="nav-link"
					href=<%=request.getParameter("biblioteca")%>>Biblioteca</a></li>
				<li class="nav-item"><a class="nav-link"
					href=<%=request.getParameter("contatos")%>>Contato</a></li>
				<li class="nav-item"><a class="nav-link"
					href=<%=request.getParameter("empresas")%>>Parceiros</a></li>
				<li class="nav-item"><a class="nav-link"
					href=<%=request.getParameter("candidatos")%>>Candidatos</a></li>
			</ul>
			<!--Fim do menu-->

			<!--Inicio login e cadastro-->
			<div>
				<a href="#"><button type="button" class="btn btn-sm btn-dark">Login</button></a>
				<a href=<%=request.getParameter("create-talentos")%>><button
						type="button" class="btn btn-sm btn-light border-black">Cadastrar
						talento</button></a> <a href=<%=request.getParameter("create-candidatos")%>><button
						type="button" class="btn btn-sm btn-warning border-black">Candidatar
						à vagas</button></a> <a href=<%=request.getParameter("create-empresas")%>><button
						type="button" class="btn btn-sm btn-success border-black my-1">Cadastrar
						Empresa</button></a>
			</div>
			<!--Fim login e cadastro-->

		</div>
	</div>

</header>