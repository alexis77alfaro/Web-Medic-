package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the fotosf database table.
 * 
 */
@Entity
@NamedQuery(name="Fotosf.findAll", query="SELECT f FROM Fotosf f")
public class Fotosf implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idF;

	private String rutaImgF;

	//bi-directional many-to-one association to Medicomdc
	@ManyToOne
	@JoinColumn(name="idMdc")
	private Medicomdc medicomdc;

	//bi-directional many-to-one association to Pacientepct
	@ManyToOne
	@JoinColumn(name="idPct")
	private Pacientepct pacientepct;

	public Fotosf() {
	}

	public int getIdF() {
		return this.idF;
	}

	public void setIdF(int idF) {
		this.idF = idF;
	}

	public String getRutaImgF() {
		return this.rutaImgF;
	}

	public void setRutaImgF(String rutaImgF) {
		this.rutaImgF = rutaImgF;
	}

	public Medicomdc getMedicomdc() {
		return this.medicomdc;
	}

	public void setMedicomdc(Medicomdc medicomdc) {
		this.medicomdc = medicomdc;
	}

	public Pacientepct getPacientepct() {
		return this.pacientepct;
	}

	public void setPacientepct(Pacientepct pacientepct) {
		this.pacientepct = pacientepct;
	}

}