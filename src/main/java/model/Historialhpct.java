package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the historialhpct database table.
 * 
 */
@Entity
@NamedQuery(name="Historialhpct.findAll", query="SELECT h FROM Historialhpct h")
public class Historialhpct implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idH;

	@Temporal(TemporalType.DATE)
	private Date fecha;

	//bi-directional many-to-one association to Pacientepct
	@ManyToOne
	@JoinColumn(name="idPct")
	private Pacientepct pacientepct;

	public Historialhpct() {
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

	public Pacientepct getPacientepct() {
		return this.pacientepct;
	}

	public void setPacientepct(Pacientepct pacientepct) {
		this.pacientepct = pacientepct;
	}

}