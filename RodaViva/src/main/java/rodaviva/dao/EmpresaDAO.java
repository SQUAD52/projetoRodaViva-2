package rodaviva.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import rodaviva.conecta.banco.ConectBanco;
import rodaviva.model.Empresa;

public class EmpresaDAO {
	public void save(Empresa empresa) {
		/*
		 * Isso é uma sql comum, os ? são os parametros que nós vamos adicionar na base
		 * de dados
		 */

		String sql = "INSERT INTO empresa(nome,cnpj,email,telefone,cep,endereco,cidade,estado,vagas)"
				+ " VALUES(?,?,?,?,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConectBanco.createConnectionToMySQL();

			// Cria um PreparedStatement, classe usada para executar a query
			pstm = conn.prepareStatement(sql);

			// Adiciona o valor do primeiro parametro da sql
			pstm.setString(1, empresa.getNome());
			pstm.setString(2, empresa.getCnpj());
			pstm.setString(3, empresa.getEmail());
			pstm.setString(4, empresa.getTelefone());
			pstm.setString(5, empresa.getCep());
			pstm.setString(6, empresa.getEndereco());
			pstm.setString(7, empresa.getCidade());
			pstm.setString(8, empresa.getEstado());
			pstm.setString(9, empresa.getVagas());

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
		String sql = "DELETE FROM empresa WHERE id = ?";

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

	public void update(Empresa empresa) {
		String sql = "UPDATE empresa SET nome = ?, cnpj = ?, email = ?, telefone = ?, cep = ?, endereco = ?, cidade = ?, estado = ?, vagas = ? "
				+ "WHERE id = ?";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco de dados
			conn = ConectBanco.createConnectionToMySQL();

			// Cria uma PreparedStatement, classe usada oara executar a query
			pstm = conn.prepareStatement(sql);

			// Adiciona o valor do primeiro parâmetro da sql
			pstm.setString(1, empresa.getNome());
			pstm.setString(2, empresa.getCnpj());
			pstm.setString(3, empresa.getEmail());
			pstm.setString(4, empresa.getTelefone());
			pstm.setString(5, empresa.getCep());
			pstm.setString(6, empresa.getEndereco());
			pstm.setString(7, empresa.getCidade());
			pstm.setString(8, empresa.getEstado());
			pstm.setString(9, empresa.getVagas());
			pstm.setLong(10, empresa.getId());

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

	public List<Empresa> getEmpresas() {

		String sql = "SELECT * FROM empresa";

		List<Empresa> empresas = new ArrayList<>();

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
				Empresa empresa = new Empresa();

				// Recupera o id do banco e atribui ele ao objeto
				empresa.setId(rset.getLong("id"));
				empresa.setNome(rset.getString("nome"));
				empresa.setCnpj(rset.getString("cnpj"));
				empresa.setEmail(rset.getString("email"));
				empresa.setTelefone(rset.getString("telefone"));
				empresa.setCep(rset.getString("cep"));
				empresa.setEndereco(rset.getString("endereco"));
				empresa.setCidade(rset.getString("cidade"));
				empresa.setEstado(rset.getString("estado"));
				empresa.setVagas(rset.getString("vagas"));

				// Adiciono o contato recuperado, a lista de contatos
				empresas.add(empresa);
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
		return empresas;
	}

	public Empresa getEmpresaById(Long id) {
		String sql = "SELECT * FROM empresa where id = ?";

		Empresa empresa = new Empresa();

		Connection conn = null;
		PreparedStatement pstm = null;

		ResultSet rset = null;

		try {
			conn = ConectBanco.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setLong(1, id);
			rset = pstm.executeQuery();
			rset.next();


			empresa.setId(rset.getLong("id"));
			empresa.setNome(rset.getString("nome"));
			empresa.setCnpj(rset.getString("cnpj"));
			empresa.setEmail(rset.getString("email"));
			empresa.setTelefone(rset.getString("telefone"));
			empresa.setCep(rset.getString("cep"));
			empresa.setEndereco(rset.getString("endereco"));
			empresa.setCidade(rset.getString("cidade"));
			empresa.setEstado(rset.getString("estado"));
			empresa.setVagas(rset.getString("vagas"));

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
		return empresa;

	}

	public Empresa getEmpresaByCNPJ(String cnpj) {
		String sql = "SELECT * FROM empresa where cnpj = ?";

		Empresa empresa = new Empresa();

		Connection conn = null;
		PreparedStatement pstm = null;

		ResultSet rset = null;

		try {
			conn = ConectBanco.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, cnpj);
			rset = pstm.executeQuery();
			rset.next();


			empresa.setId(rset.getLong("id"));
			empresa.setNome(rset.getString("nome"));
			empresa.setCnpj(rset.getString("cnpj"));
			empresa.setEmail(rset.getString("email"));
			empresa.setTelefone(rset.getString("telefone"));
			empresa.setCep(rset.getString("cep"));
			empresa.setEndereco(rset.getString("endereco"));
			empresa.setCidade(rset.getString("cidade"));
			empresa.setEstado(rset.getString("estado"));
			empresa.setVagas(rset.getString("vagas"));

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
		return empresa;

	}
}
