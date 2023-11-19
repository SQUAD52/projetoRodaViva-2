package rodaviva.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import rodaviva.dao.TalentoDAO;
import rodaviva.model.Talento;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(urlPatterns = { "/talento", "/talento-create", "/talento-delete", "/talento-update" })
public class TalentoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	TalentoDAO tdao = new TalentoDAO();
	Talento talento = new Talento();
	SimpleDateFormat simpleData = new SimpleDateFormat("yyyy-MM-dd");
	Date dataParaBanco = new Date();

	public TalentoController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/talento":
			listaTalento(request, response);
			break;
		case "/talento-delete":
			deleteTalento(request, response);
			break;

		case "/talento-update":
			updateTalento(request, response);
			break;
		case "/talento-create":
			response.sendRedirect("views/talento/formTalento.jsp");
			break;

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/talento-create":
			createTalento(request, response);
			break;
		case "/talento-update":
			postUpdateTalento(request, response);
			break;
		}
	}

	protected void listaTalento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Talento> lista = tdao.getTalentos();

		request.setAttribute("listaTalentos", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/talento/listatalento.jsp");
		rd.forward(request, response);

	}

	protected void deleteTalento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		tdao.removedById(id);
		response.sendRedirect("talento");
	}

	protected void createTalento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String dataFormulario = request.getParameter("nDataNascimento");
		try {
			dataParaBanco = simpleData.parse(dataFormulario);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		talento.setDataNascimento(dataParaBanco);
		talento.setNome(request.getParameter("nNome"));
		talento.setCpf(request.getParameter("nCPF"));
		talento.setEmail(request.getParameter("nEmail"));
		talento.setFormacao(request.getParameter("nFormacao"));
		talento.setTelefone(request.getParameter("nTelefone"));
		talento.setCep(request.getParameter("nCep"));
		talento.setEndereco(request.getParameter("nEndereco"));
		talento.setEstado(request.getParameter("nEstado"));
		talento.setCidade(request.getParameter("nCidade"));
		tdao.save(talento);
		response.sendRedirect("./talento");
	}

	protected void updateTalento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		talento = tdao.getTalentoById(id);

		request.setAttribute("talento", talento);
		RequestDispatcher rd = request.getRequestDispatcher("./views/talento/updateTalento.jsp");
		rd.forward(request, response);
	}

	protected void postUpdateTalento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dataFormulario = request.getParameter("nDataNascimento");
		try {
			dataParaBanco = simpleData.parse(dataFormulario);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		talento.setId(Long.parseLong(request.getParameter("nId")));
		talento.setDataNascimento(dataParaBanco);
		talento.setNome(request.getParameter("nNome"));
		talento.setCpf(request.getParameter("nCPF"));
		talento.setEmail(request.getParameter("nEmail"));
		talento.setFormacao(request.getParameter("nFormacao"));
		talento.setTelefone(request.getParameter("nTelefone"));
		talento.setCep(request.getParameter("nCep"));
		talento.setEndereco(request.getParameter("nEndereco"));
		talento.setEstado(request.getParameter("nEstado"));
		talento.setCidade(request.getParameter("nCidade"));
		tdao.update(talento);
		response.sendRedirect("./talento");
	}
}
