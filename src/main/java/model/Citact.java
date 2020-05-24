package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


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

	private String estado;

	//bi-directional many-to-one association to Medicomdc
	@ManyToOne
	@JoinColumn(name="idMdc")
	private Medicomdc medicomdc;

	//bi-directional many-to-one association to Pacientepct
	@ManyToOne
	@JoinColumn(name="idPct")
	private Pacientepct pacientepct;

	//bi-directional many-to-one association to Detallecitadc
	@OneToMany(mappedBy="citact")
	private List<Detallecitadc> detallecitadcs;

	public Citact() {
	}

	public int getIdCT() {
		return this.idCT;
	}

	public void setIdCT(int idCT) {
		this.idCT = idCT;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
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

	public List<Detallecitadc> getDetallecitadcs() {
		return this.detallecitadcs;
	}

	public void setDetallecitadcs(List<Detallecitadc> detallecitadcs) {
		this.detallecitadcs = detallecitadcs;
	}

	public Detallecitadc addDetallecitadc(Detallecitadc detallecitadc) {
		getDetallecitadcs().add(detallecitadc);
		detallecitadc.setCitact(this);

		return detallecitadc;
	}

	public Detallecitadc removeDetallecitadc(Detallecitadc detallecitadc) {
		getDetallecitadcs().remove(detallecitadc);
		detallecitadc.setCitact(null);

		return detallecitadc;
	}

}