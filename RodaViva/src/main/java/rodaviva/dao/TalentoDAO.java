package rodaviva.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import rodaviva.conecta.banco.ConectBanco;
import rodaviva.model.Talento;

public class TalentoDAO {

	public void save(Talento talento) {
		/*
		 * Isso é uma sql comum, os ? são os parametros que nós vamos adicionar na base
		 * de dados
		 */

		String sql = "INSERT INTO talento(nome,cpf,dataNascimento,email,formacao,telefone,foto,cep,endereco,cidade,estado)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConectBanco.createConnectionToMySQL();

			// Cria um PreparedStatement, classe usada para executar a query
			pstm = conn.prepareStatement(sql);

			// Adiciona o valor do primeiro parametro da sql
			pstm.setString(1, talento.getNome());
			pstm.setString(2, talento.getCpf());
			pstm.setDate(3, new Date(talento.getDataNascimento().getTime()));
			pstm.setString(4, talento.getEmail());
			pstm.setString(5, talento.getFormacao());
			pstm.setString(6, talento.getTelefone());
			pstm.setByte(7, talento.getFoto());
			pstm.setString(8, talento.getCep());
			pstm.setString(9, talento.getEndereco());
			pstm.setString(10, talento.getCidade());
			pstm.setString(11, talento.getEstado());

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
		String sql = "DELETE FROM talento WHERE id = ?";

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

	public void update(Talento talento) {
		String sql = "UPDATE talento SET nome = ?, cpf = ?, dataNascimento = ?, email = ?, formacao = ?, telefone = ?, foto = ?, cep = ?, endereco = ?, cidade = ?, estado = ? "
				+ "WHERE id = ?";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco de dados
			conn = ConectBanco.createConnectionToMySQL();

			// Cria uma PreparedStatement, classe usada oara executar a query
			pstm = conn.prepareStatement(sql);

			// Adiciona o valor do primeiro parâmetro da sql
			pstm.setString(1, talento.getNome());
			pstm.setString(2, talento.getCpf());
			pstm.setDate(3, new Date(talento.getDataNascimento().getTime()));
			pstm.setString(4, talento.getEmail());
			pstm.setString(5, talento.getFormacao());
			pstm.setString(6, talento.getTelefone());
			pstm.setByte(7, talento.getFoto());
			pstm.setString(8, talento.getCep());
			pstm.setString(9, talento.getEndereco());
			pstm.setString(10, talento.getCidade());
			pstm.setString(11, talento.getEstado());
			pstm.setLong(12, talento.getId());

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

	public List<Talento> getTalentos() {

		String sql = "SELECT * FROM talento";

		List<Talento> talentos = new ArrayList<>();

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
				Talento talento = new Talento();

				// Recupera o id do banco e atribui ele ao objeto
				talento.setId(rset.getLong("id"));
				talento.setNome(rset.getString("nome"));
				talento.setCpf(rset.getString("cpf"));
				talento.setDataNascimento(rset.getDate("dataNascimento"));
				talento.setEmail(rset.getString("email"));
				talento.setFormacao(rset.getString("formacao"));
				talento.setTelefone(rset.getString("telefone"));
				talento.setFoto(rset.getByte("foto"));
				talento.setCep(rset.getString("cep"));
				talento.setEndereco(rset.getString("endereco"));
				talento.setCidade(rset.getString("cidade"));
				talento.setEstado(rset.getString("estado"));

				// Adiciono o contato recuperado, a lista de contatos
				talentos.add(talento);
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
		return talentos;
	}

	public Talento getTalentoById(Long id) {
		String sql = "SELECT * FROM talento where id = ?";

		Talento talento = new Talento();

		Connection conn = null;
		PreparedStatement pstm = null;

		ResultSet rset = null;

		try {
			conn = ConectBanco.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setLong(1, id);
			rset = pstm.executeQuery();
			rset.next();

			talento.setId(rset.getInt("id"));
			talento.setNome(rset.getString("nome"));
			talento.setCpf(rset.getString("cpf"));
			talento.setDataNascimento(rset.getDate("dataNascimento"));
			talento.setEmail(rset.getString("email"));
			talento.setFormacao(rset.getString("formacao"));
			talento.setTelefone(rset.getString("telefone"));
			talento.setFoto(rset.getByte("foto"));
			talento.setCep(rset.getString("cep"));
			talento.setEndereco(rset.getString("endereco"));
			talento.setCidade(rset.getString("cidade"));
			talento.setEstado(rset.getString("estado"));

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
		return talento;

	}

	public Talento getTalentoByCPF(String cpf) {
		String sql = "SELECT * FROM talento where cpf = ?";

		Talento talento = new Talento();

		Connection conn = null;
		PreparedStatement pstm = null;

		ResultSet rset = null;

		try {
			conn = ConectBanco.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, cpf);
			rset = pstm.executeQuery();
			rset.next();

			talento.setId(rset.getInt("id"));
			talento.setNome(rset.getString("nome"));
			talento.setCpf(rset.getString("cpf"));
			talento.setDataNascimento(rset.getDate("dataNascimento"));
			talento.setEmail(rset.getString("email"));
			talento.setFormacao(rset.getString("formacao"));
			talento.setTelefone(rset.getString("telefone"));
			talento.setFoto(rset.getByte("foto"));
			talento.setCep(rset.getString("cep"));
			talento.setEndereco(rset.getString("endereco"));
			talento.setCidade(rset.getString("cidade"));
			talento.setEstado(rset.getString("estado"));

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
		return talento;

	}
}
