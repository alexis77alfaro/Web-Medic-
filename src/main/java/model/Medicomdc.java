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

	//bi-directional many-to-one association to Fotosf
	@OneToMany(mappedBy="medicomdc")
	private List<Fotosf> fotosfs;

	//bi-directional many-to-one association to Historialh
	@OneToMany(mappedBy="medicomdc")
	private List<Historialh> historialhs;

	//bi-directional many-to-one association to Horariohr
	@OneToMany(mappedBy="medicomdc")
	private List<Horariohr> horariohrs;

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

	public List<Fotosf> getFotosfs() {
		return this.fotosfs;
	}

	public void setFotosfs(List<Fotosf> fotosfs) {
		this.fotosfs = fotosfs;
	}

	public Fotosf addFotosf(Fotosf fotosf) {
		getFotosfs().add(fotosf);
		fotosf.setMedicomdc(this);

		return fotosf;
	}

	public Fotosf removeFotosf(Fotosf fotosf) {
		getFotosfs().remove(fotosf);
		fotosf.setMedicomdc(null);

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
		historialh.setMedicomdc(this);

		return historialh;
	}

	public Historialh removeHistorialh(Historialh historialh) {
		getHistorialhs().remove(historialh);
		historialh.setMedicomdc(null);

		return historialh;
	}

	public List<Horariohr> getHorariohrs() {
		return this.horariohrs;
	}

	public void setHorariohrs(List<Horariohr> horariohrs) {
		this.horariohrs = horariohrs;
	}

	public Horariohr addHorariohr(Horariohr horariohr) {
		getHorariohrs().add(horariohr);
		horariohr.setMedicomdc(this);

		return horariohr;
	}

	public Horariohr removeHorariohr(Horariohr horariohr) {
		getHorariohrs().remove(horariohr);
		horariohr.setMedicomdc(null);

		return horariohr;
	}

}