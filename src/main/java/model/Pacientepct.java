package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the pacientepct database table.
 * 
 */
@Entity
@NamedQuery(name="Pacientepct.findAll", query="SELECT p FROM Pacientepct p")
public class Pacientepct implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idPct;

	private String apellidosPct;

	private String correoPct;

	private String direccionPct;

	private int edadPct;

	private String nombresPct;

	private String passPct;

	private String telefonoPct;

	//bi-directional many-to-one association to Citact
	@OneToMany(mappedBy="pacientepct")
	private List<Citact> citacts;

	//bi-directional many-to-one association to Fotosf
	@OneToMany(mappedBy="pacientepct")
	private List<Fotosf> fotosfs;

	//bi-directional many-to-one association to Historialh
	@OneToMany(mappedBy="pacientepct")
	private List<Historialh> historialhs;

	public Pacientepct() {
	}

	public int getIdPct() {
		return this.idPct;
	}

	public void setIdPct(int idPct) {
		this.idPct = idPct;
	}

	public String getApellidosPct() {
		return this.apellidosPct;
	}

	public void setApellidosPct(String apellidosPct) {
		this.apellidosPct = apellidosPct;
	}

	public String getCorreoPct() {
		return this.correoPct;
	}

	public void setCorreoPct(String correoPct) {
		this.correoPct = correoPct;
	}

	public String getDireccionPct() {
		return this.direccionPct;
	}

	public void setDireccionPct(String direccionPct) {
		this.direccionPct = direccionPct;
	}

	public int getEdadPct() {
		return this.edadPct;
	}

	public void setEdadPct(int edadPct) {
		this.edadPct = edadPct;
	}

	public String getNombresPct() {
		return this.nombresPct;
	}

	public void setNombresPct(String nombresPct) {
		this.nombresPct = nombresPct;
	}

	public String getPassPct() {
		return this.passPct;
	}

	public void setPassPct(String passPct) {
		this.passPct = passPct;
	}

	public String getTelefonoPct() {
		return this.telefonoPct;
	}

	public void setTelefonoPct(String telefonoPct) {
		this.telefonoPct = telefonoPct;
	}

	public List<Citact> getCitacts() {
		return this.citacts;
	}

	public void setCitacts(List<Citact> citacts) {
		this.citacts = citacts;
	}

	public Citact addCitact(Citact citact) {
		getCitacts().add(citact);
		citact.setPacientepct(this);

		return citact;
	}

	public Citact removeCitact(Citact citact) {
		getCitacts().remove(citact);
		citact.setPacientepct(null);

		return citact;
	}

	public List<Fotosf> getFotosfs() {
		return this.fotosfs;
	}

	public void setFotosfs(List<Fotosf> fotosfs) {
		this.fotosfs = fotosfs;
	}

	public Fotosf addFotosf(Fotosf fotosf) {
		getFotosfs().add(fotosf);
		fotosf.setPacientepct(this);

		return fotosf;
	}

	public Fotosf removeFotosf(Fotosf fotosf) {
		getFotosfs().remove(fotosf);
		fotosf.setPacientepct(null);

		return fotosf;
	}

	public List<Historialh> getHistorialhs() {
		return this.historialhs;
	}

	public void setHistorialhs(List<Historialh> historialhs) {
		this.historialhs = historialhs;
	}

	public Historialh addHistorialh(Historialh historialh) {
		getHistorialhs().add(historialh);
		historialh.setPacientepct(this);

		return historialh;
	}

	public Historialh removeHistorialh(Historialh historialh) {
		getHistorialhs().remove(historialh);
		historialh.setPacientepct(null);

		return historialh;
	}

}