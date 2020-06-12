package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the citact database table.
 * 
 */
@Entity
@NamedQuery(name="Citact.findAll", query="SELECT c FROM Citact c")
public class Citact implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idCT;

	private String descripcionDC;

	private String estado;

	private String fechaDC;

	private String horaDC;

	//bi-directional many-to-one association to Medicomdc
	@ManyToOne
	@JoinColumn(name="idMdc")
	private Medicomdc medicomdc;

	//bi-directional many-to-one association to Pacientepct
	@ManyToOne
	@JoinColumn(name="idPct")
	private Pacientepct pacientepct;

	public Citact() {
	}

	public int getIdCT() {
		return this.idCT;
	}

	public void setIdCT(int idCT) {
		this.idCT = idCT;
	}

	public String getDescripcionDC() {
		return this.descripcionDC;
	}

	public void setDescripcionDC(String descripcionDC) {
		this.descripcionDC = descripcionDC;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getFechaDC() {
		return this.fechaDC;
	}

	public void setFechaDC(String fechaDC) {
		this.fechaDC = fechaDC;
	}

	public String getHoraDC() {
		return this.horaDC;
	}

	public void setHoraDC(String horaDC) {
		this.horaDC = horaDC;
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