package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the medicomdc database table.
 * 
 */
@Entity
@NamedQuery(name="Medicomdc.findAll", query="SELECT m FROM Medicomdc m")
public class Medicomdc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idMdc;

	private String apellidosMdc;

	private String correoMdc;

	private String direccionMdc;

	private int edadMdc;

	private String nombresMdc;

	private String passMdc;

	private String telefonoMdc;

	//bi-directional many-to-one association to Citact
	@OneToMany(mappedBy="medicomdc")
	private List<Citact> citacts;

	//bi-directional many-to-one association to Especialidadesmdc
	@OneToMany(mappedBy="medicomdc")
	private List<Especialidadesmdc> especialidadesmdcs;

	//bi-directional many-to-one association to Historialhmdc
	@OneToMany(mappedBy="medicomdc")
	private List<Historialhmdc> historialhmdcs;

	public Medicomdc() {
	}

	public int getIdMdc() {
		return this.idMdc;
	}

	public void setIdMdc(int idMdc) {
		this.idMdc = idMdc;
	}

	public String getApellidosMdc() {
		return this.apellidosMdc;
	}

	public void setApellidosMdc(String apellidosMdc) {
		this.apellidosMdc = apellidosMdc;
	}

	public String getCorreoMdc() {
		return this.correoMdc;
	}

	public void setCorreoMdc(String correoMdc) {
		this.correoMdc = correoMdc;
	}

	public String getDireccionMdc() {
		return this.direccionMdc;
	}

	public void setDireccionMdc(String direccionMdc) {
		this.direccionMdc = direccionMdc;
	}

	public int getEdadMdc() {
		return this.edadMdc;
	}

	public void setEdadMdc(int edadMdc) {
		this.edadMdc = edadMdc;
	}

	public String getNombresMdc() {
		return this.nombresMdc;
	}

	public void setNombresMdc(String nombresMdc) {
		this.nombresMdc = nombresMdc;
	}

	public String getPassMdc() {
		return this.passMdc;
	}

	public void setPassMdc(String passMdc) {
		this.passMdc = passMdc;
	}

	public String getTelefonoMdc() {
		return this.telefonoMdc;
	}

	public void setTelefonoMdc(String telefonoMdc) {
		this.telefonoMdc = telefonoMdc;
	}

	public List<Citact> getCitacts() {
		return this.citacts;
	}

	public void setCitacts(List<Citact> citacts) {
		this.citacts = citacts;
	}

	public Citact addCitact(Citact citact) {
		getCitacts().add(citact);
		citact.setMedicomdc(this);

		return citact;
	}

	public Citact removeCitact(Citact citact) {
		getCitacts().remove(citact);
		citact.setMedicomdc(null);

		return citact;
	}

	public List<Especialidadesmdc> getEspecialidadesmdcs() {
		return this.especialidadesmdcs;
	}

	public void setEspecialidadesmdcs(List<Especialidadesmdc> especialidadesmdcs) {
		this.especialidadesmdcs = especialidadesmdcs;
	}

	public Especialidadesmdc addEspecialidadesmdc(Especialidadesmdc especialidadesmdc) {
		getEspecialidadesmdcs().add(especialidadesmdc);
		especialidadesmdc.setMedicomdc(this);

		return especialidadesmdc;
	}

	public Especialidadesmdc removeEspecialidadesmdc(Especialidadesmdc especialidadesmdc) {
		getEspecialidadesmdcs().remove(especialidadesmdc);
		especialidadesmdc.setMedicomdc(null);

		return especialidadesmdc;
	}

	public List<Historialhmdc> getHistorialhmdcs() {
		return this.historialhmdcs;
	}

	public void setHistorialhmdcs(List<Historialhmdc> historialhmdcs) {
		this.historialhmdcs = historialhmdcs;
	}

	public Historialhmdc addHistorialhmdc(Historialhmdc historialhmdc) {
		getHistorialhmdcs().add(historialhmdc);
		historialhmdc.setMedicomdc(this);

		return historialhmdc;
	}

	public Historialhmdc removeHistorialhmdc(Historialhmdc historialhmdc) {
		getHistorialhmdcs().remove(historialhmdc);
		historialhmdc.setMedicomdc(null);

		return historialhmdc;
	}

}