package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the especialidadesmdc database table.
 * 
 */
@Entity
@NamedQuery(name="Especialidadesmdc.findAll", query="SELECT e FROM Especialidadesmdc e")
public class Especialidadesmdc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEspMdc;

	private String especialidadEspMdc;

	//bi-directional many-to-one association to Medicomdc
	@ManyToOne
	@JoinColumn(name="idMdc")
	private Medicomdc medicomdc;

	public Especialidadesmdc() {
	}

	public int getIdEspMdc() {
		return this.idEspMdc;
	}

	public void setIdEspMdc(int idEspMdc) {
		this.idEspMdc = idEspMdc;
	}

	public String getEspecialidadEspMdc() {
		return this.especialidadEspMdc;
	}

	public void setEspecialidadEspMdc(String especialidadEspMdc) {
		this.especialidadEspMdc = especialidadEspMdc;
	}

	public Medicomdc getMedicomdc() {
		return this.medicomdc;
	}

	public void setMedicomdc(Medicomdc medicomdc) {
		this.medicomdc = medicomdc;
	}

}