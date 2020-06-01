package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the horariohr database table.
 * 
 */
@Entity
@NamedQuery(name="Horariohr.findAll", query="SELECT h FROM Horariohr h")
public class Horariohr implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idHr;

	private String diaHr;

	private String horaFinalHr;

	private String horaInicioHr;

	//bi-directional many-to-one association to Medicomdc
	@ManyToOne
	@JoinColumn(name="idMdc")
	private Medicomdc medicomdc;

	public Horariohr() {
	}

	public int getIdHr() {
		return this.idHr;
	}

	public void setIdHr(int idHr) {
		this.idHr = idHr;
	}

	public String getDiaHr() {
		return this.diaHr;
	}

	public void setDiaHr(String diaHr) {
		this.diaHr = diaHr;
	}

	public String getHoraFinalHr() {
		return this.horaFinalHr;
	}

	public void setHoraFinalHr(String horaFinalHr) {
		this.horaFinalHr = horaFinalHr;
	}

	public String getHoraInicioHr() {
		return this.horaInicioHr;
	}

	public void setHoraInicioHr(String horaInicioHr) {
		this.horaInicioHr = horaInicioHr;
	}

	public Medicomdc getMedicomdc() {
		return this.medicomdc;
	}

	public void setMedicomdc(Medicomdc medicomdc) {
		this.medicomdc = medicomdc;
	}

}