package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the administradoradm database table.
 * 
 */
@Entity
@NamedQuery(name="Administradoradm.findAll", query="SELECT a FROM Administradoradm a")
public class Administradoradm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idAdm;

	private String apellidosAdm;

	private String correoAdm;

	private String nombresAdm;

	private String passAdm;

	private String usserAdm;

	public Administradoradm() {
	}

	public int getIdAdm() {
		return this.idAdm;
	}

	public void setIdAdm(int idAdm) {
		this.idAdm = idAdm;
	}

	public String getApellidosAdm() {
		return this.apellidosAdm;
	}

	public void setApellidosAdm(String apellidosAdm) {
		this.apellidosAdm = apellidosAdm;
	}

	public String getCorreoAdm() {
		return this.correoAdm;
	}

	public void setCorreoAdm(String correoAdm) {
		this.correoAdm = correoAdm;
	}

	public String getNombresAdm() {
		return this.nombresAdm;
	}

	public void setNombresAdm(String nombresAdm) {
		this.nombresAdm = nombresAdm;
	}

	public String getPassAdm() {
		return this.passAdm;
	}

	public void setPassAdm(String passAdm) {
		this.passAdm = passAdm;
	}

	public String getUsserAdm() {
		return this.usserAdm;
	}

	public void setUsserAdm(String usserAdm) {
		this.usserAdm = usserAdm;
	}

}