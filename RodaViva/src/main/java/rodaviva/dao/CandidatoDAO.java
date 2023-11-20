package rodaviva.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import rodaviva.conecta.banco.ConectBanco;
import rodaviva.model.Candidato;
import rodaviva.model.Empresa;
import rodaviva.model.Talento;

public class CandidatoDAO {

	Talento talento = new Talento();
	Empresa empresa = new Empresa();
	TalentoDAO tdao = new TalentoDAO();
	EmpresaDAO edao = new EmpresaDAO();

	public void save(Candidato candidato) {

		String sql = "INSERT INTO candidato(cargo,idEmpresa,idTalento)" + " VALUES(?,?,?)";

		Connection conn = null;
		PreparedStatement pstm = null;

		talento = candidato.getTalento();
		empresa = candidato.getEmpresa();

		try {
			// Cria uma conexão com o banco
			conn = ConectBanco.createConnectionToMySQL();

			// Cria um PreparedStatement, classe usada para executar a query
			pstm = conn.prepareStatement(sql);

			// Adiciona o valor do primeiro parametro da sql
			pstm.setString(1, candidato.getCargo());
			pstm.setLong(2, empresa.getId());			
			pstm.setLong(3, talento.getId());


			// Executa a sql para inserção dos dados
			pstm.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// fecha as conexões

			try {
				if (pstm != null)
					pstm.close();

				if (conn != null)
					conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	public void removedById(Long id) {
		String sql = "DELETE FROM candidato WHERE id = ?";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			conn = ConectBanco.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setLong(1, id);

			pstm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	public void update(Candidato candidato) {
		String sql = "UPDATE candidato SET cargo = ?, idEmpresa = ? idTalento = ? "
				+ "WHERE id = ?";

		Connection conn = null;
		PreparedStatement pstm = null;

		talento = candidato.getTalento();
		empresa = candidato.getEmpresa();

		try {
			// Cria uma conexão com o banco de dados
			conn = ConectBanco.createConnectionToMySQL();

			// Cria uma PreparedStatement, classe usada oara executar a query
			pstm = conn.prepareStatement(sql);

			// Adiciona o valor do primeiro parâmetro da sql
			pstm.setString(1, candidato.getCargo());
			pstm.setLong(2, empresa.getId());
			pstm.setLong(3, talento.getId());
			pstm.setLong(4, candidato.getId());

			// Executa a sql para inserção dos dados
			pstm.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// fecha as conexões
			try {
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	public List<Candidato> getCandidatos() {

		String sql = "SELECT * FROM candidato";

		List<Candidato> candidatos = new ArrayList<>();

		Connection conn = null;
		PreparedStatement pstm = null;

		// Classe que vai recuperar os dados do banco de dados
		ResultSet rset = null;

		try {
			conn = ConectBanco.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			rset = pstm.executeQuery();

			// Enquanto existir dados no banco de dados, faça
			while (rset.next()) {
				Candidato candidato = new Candidato();

				// Recupera o id do banco e atribui ele ao objeto
				candidato.setId(rset.getLong("id"));
				candidato.setCargo(rset.getString("cargo"));
				talento = tdao.getTalentoById(rset.getLong("idTalento"));
				candidato.setTalento(talento);
				empresa = edao.getEmpresaById(rset.getLong("idEmpresa"));
				candidato.setEmpresa(empresa);
				

				// Adiciono o contato recuperado, a lista de contatos
				candidatos.add(candidato);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (rset != null)
					rset.close();
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return candidatos;
	}

	public Candidato getCandidatoById(Long id) {
		String sql = "SELECT * FROM candidato where id = ?";

		Candidato candidato = new Candidato();

		Connection conn = null;
		PreparedStatement pstm = null;

		ResultSet rset = null;

		try {
			conn = ConectBanco.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setLong(1, id);
			rset = pstm.executeQuery();
			rset.next();

			candidato.setId(rset.getInt("id"));
			candidato.setCargo(rset.getString("cargo"));
			talento = tdao.getTalentoById(rset.getLong("idTalento"));
			candidato.setTalento(talento);
			empresa = edao.getEmpresaById(rset.getLong("idEmpresa"));
			candidato.setEmpresa(empresa);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (rset != null)
					rset.close();
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return candidato;

	}
}
