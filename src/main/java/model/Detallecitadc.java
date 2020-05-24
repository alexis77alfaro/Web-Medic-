package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the detallecitadc database table.
 * 
 */
@Entity
@NamedQuery(name="Detallecitadc.findAll", query="SELECT d FROM Detallecitadc d")
public class Detallecitadc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idDC;

	private String descripcionDC;

	@Temporal(TemporalType.DATE)
	private Date fechaDC;

	//bi-directional many-to-one association to Citact
	@ManyToOne
	@JoinColumn(name="idCT")
	private Citact citact;

	public Detallecitadc() {
	}

	public int getIdDC() {
		return this.idDC;
	}

	public void setIdDC(int idDC) {
		this.idDC = idDC;
	}

	public String getDescripcionDC() {
		return this.descripcionDC;
	}

	public void setDescripcionDC(String descripcionDC) {
		this.descripcionDC = descripcionDC;
	}

	public Date getFechaDC() {
		return this.fechaDC;
	}

	public void setFechaDC(Date fechaDC) {
		this.fechaDC = fechaDC;
	}

	public Citact getCitact() {
		return this.citact;
	}

	public void setCitact(Citact citact) {
		this.citact = citact;
	}

}