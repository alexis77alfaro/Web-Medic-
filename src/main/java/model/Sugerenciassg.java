package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the sugerenciassg database table.
 * 
 */
@Entity
@NamedQuery(name="Sugerenciassg.findAll", query="SELECT s FROM Sugerenciassg s")
public class Sugerenciassg implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idSG;

	private String comentarioSG;

	@Temporal(TemporalType.DATE)
	private Date fecha;

	private String usuarioSG;

	public Sugerenciassg() {
	}

	public int getIdSG() {
		return this.idSG;
	}

	public void setIdSG(int idSG) {
		this.idSG = idSG;
	}

	public String getComentarioSG() {
		return this.comentarioSG;
	}

	public void setComentarioSG(String comentarioSG) {
		this.comentarioSG = comentarioSG;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getUsuarioSG() {
		return this.usuarioSG;
	}

	public void setUsuarioSG(String usuarioSG) {
		this.usuarioSG = usuarioSG;
	}

}