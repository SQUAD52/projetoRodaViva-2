package rodaviva.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import rodaviva.dao.EmpresaDAO;
import rodaviva.model.Empresa;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = { "/empresa", "/empresa-create", "/empresa-delete", "/empresa-update" })
public class EmpresaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmpresaDAO edao = new EmpresaDAO();
	Empresa empresa = new Empresa();

    public EmpresaController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/empresa":
			listaEmpresa(request, response);
			break;
		case "/empresa-delete":
			deleteEmpresa(request, response);
			break;

		case "/empresa-update":
			updateEmpresa(request, response);
			break;
		case "/empresa-create":
			response.sendRedirect("views/empresa/formEmpresa.jsp");
			break;

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/empresa-create":
			createEmpresa(request, response);
			break;
		case "/empresa-update":
			postUpdateEmpresa(request, response);
			break;
		}
	}

	protected void listaEmpresa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Empresa> lista = edao.getEmpresas();

		request.setAttribute("listaEmpresas", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/empresa/listaEmpresa.jsp");
		rd.forward(request, response);

	}

	protected void deleteEmpresa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		edao.removedById(id);
		response.sendRedirect("empresa");
	}

	protected void createEmpresa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	

		empresa.setNome(request.getParameter("nNome"));
		empresa.setCnpj(request.getParameter("nCNPJ"));
		empresa.setEmail(request.getParameter("nEmail"));
		empresa.setTelefone(request.getParameter("nTelefone"));
		empresa.setCep(request.getParameter("nCep"));
		empresa.setEndereco(request.getParameter("nEndereco"));
		empresa.setEstado(request.getParameter("nEstado"));
		empresa.setCidade(request.getParameter("nCidade"));
		empresa.setVagas(request.getParameter("nVagas"));
		edao.save(empresa);
		response.sendRedirect("./empresa");
	}

	protected void updateEmpresa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		empresa = edao.getEmpresaById(id);

		request.setAttribute("empresa", empresa);
		RequestDispatcher rd = request.getRequestDispatcher("./views/empresa/updateEmpresa.jsp");
		rd.forward(request, response);
	}

	protected void postUpdateEmpresa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		empresa.setId(Long.parseLong(request.getParameter("nId")));
		empresa.setNome(request.getParameter("nNome"));
		empresa.setCnpj(request.getParameter("nCNPJ"));
		empresa.setEmail(request.getParameter("nEmail"));
		empresa.setTelefone(request.getParameter("nTelefone"));
		empresa.setCep(request.getParameter("nCep"));
		empresa.setEndereco(request.getParameter("nEndereco"));
		empresa.setEstado(request.getParameter("nEstado"));
		empresa.setCidade(request.getParameter("nCidade"));
		empresa.setVagas(request.getParameter("nVagas"));
		edao.update(empresa);
		response.sendRedirect("./empresa");
	}
}
