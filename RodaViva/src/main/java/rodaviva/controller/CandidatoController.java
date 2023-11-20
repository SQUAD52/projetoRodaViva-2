package rodaviva.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import rodaviva.dao.EmpresaDAO;
import rodaviva.dao.CandidatoDAO;
import rodaviva.dao.TalentoDAO;
import rodaviva.model.Empresa;
import rodaviva.model.Candidato;
import rodaviva.model.Talento;

@WebServlet(urlPatterns = { "/candidato", "/candidato-create", "/candidato-delete", "/candidato-update" })
public class CandidatoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CandidatoDAO cdao = new CandidatoDAO();
	Candidato candidato = new Candidato();
	Talento talento = new Talento();
	TalentoDAO tdao = new TalentoDAO();
	Empresa empresa = new Empresa();
	EmpresaDAO edao = new EmpresaDAO();

	public CandidatoController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		switch (action) {
		case "/candidato":
			listaCandidato(request, response);
			break;
		case "/candidato-delete":
			deleteCandidato(request, response);
			break;

		case "/candidato-update":
			updateCandidato(request, response);
			break;

		case "/candidato-create":
			createCandidato(request, response);
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		switch (action) {
		case "/candidato-create":
			postCreateCandidato(request, response);
			break;
		case "/candidato-update":
			postUpdateCandidato(request, response);
			break;
		}
	}

	protected void listaCandidato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Candidato> lista = cdao.getCandidatos();

		request.setAttribute("listaCandidatos", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/candidato/listaCandidato.jsp");
		rd.forward(request, response);

	}

	protected void deleteCandidato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		cdao.removedById(id);
		response.sendRedirect("./candidato");
	}

	protected void createCandidato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Empresa> lista = edao.getEmpresas();

		request.setAttribute("listaEmpresas", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/candidato/formCandidato.jsp");
		rd.forward(request, response);

	}

	protected void updateCandidato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		candidato = cdao.getCandidatoById(id);

		List<Empresa> lista = edao.getEmpresas();

		request.setAttribute("listaEmpresas", lista);
		request.setAttribute("candidato", candidato);
		RequestDispatcher rd = request.getRequestDispatcher("./views/candidato/updateCandidato.jsp");
		rd.forward(request, response);
	}

	protected void postUpdateCandidato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpf = request.getParameter("nCpfTalento");
		talento = tdao.getTalentoByCPF(cpf);

		Long idEmpresa = Long.parseLong(request.getParameter("nEmpresa"));
		empresa = edao.getEmpresaById(idEmpresa);
		
		candidato.setId(Long.parseLong(request.getParameter("nId")));
		candidato.setEmpresa(empresa);
		candidato.setTalento(talento);
		candidato.setCargo(request.getParameter("nCargo"));
		cdao.update(candidato);

		response.sendRedirect("./candidato");
	}

	protected void postCreateCandidato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpf = request.getParameter("nCpfTalento");
		talento = tdao.getTalentoByCPF(cpf);

		Long id = Long.parseLong(request.getParameter("nEmpresa"));
		empresa = edao.getEmpresaById(id);


		candidato.setEmpresa(empresa);
		candidato.setTalento(talento);
		candidato.setCargo(request.getParameter("nPacotePromo"));
		cdao.save(candidato);

		response.sendRedirect("./candidato");
	}

}
