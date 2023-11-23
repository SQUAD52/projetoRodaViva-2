package rodaviva.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = { "/", "/contato", "/curso", "/biblioteca" })
public class NavController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NavController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String action = request.getServletPath();

		switch (action) {
		case "/":
			pageHome(request, response);
			break;

		case "/contato":
			pageContato(request, response);
			break;

		case "/curso":
			pageCursos(request, response);
			break;

		case "/biblioteca":
			pageBiblioteca(request, response);
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void pageHome(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("./views/index.jsp");
	}

	protected void pageContato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("./views/contato.jsp");
	}

	protected void pageCursos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.sendRedirect("./views/curso.jsp");
	}
	protected void pageBiblioteca(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.sendRedirect("./views/biblioteca.jsp");
	}
}


