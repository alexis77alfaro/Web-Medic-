package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the historialh database table.
 * 
 */
@Entity
@NamedQuery(name="Historialh.findAll", query="SELECT h FROM Historialh h")
public class Historialh implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idH;

	@Temporal(TemporalType.DATE)
	private Date fecha;

	//bi-directional many-to-one association to Medicomdc
	@ManyToOne
	@JoinColumn(name="idMdc")
	private Medicomdc medicomdc;

	//bi-directional many-to-one association to Pacientepct
	@ManyToOne
	@JoinColumn(name="idPct")
	private Pacientepct pacientepct;

	public Historialh() {
	}

	public int getIdH() {
		return this.idH;
	}

	public void setIdH(int idH) {
		this.idH = idH;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
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