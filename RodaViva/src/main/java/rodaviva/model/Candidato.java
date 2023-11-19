package rodaviva.model;

public class Candidato {
	private long id;
	private String cargo;
	private Empresa empresa;
	private Talento talento;

	public Candidato() {
		super();
	}

	public Candidato(long id, String cargo, Empresa empresa, Talento talento) {
		super();
		this.id = id;
		this.cargo = cargo;
		this.empresa = empresa;
		this.talento = talento;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public Talento getTalento() {
		return talento;
	}

	public void setTalento(Talento talento) {
		this.talento = talento;
	}

}
