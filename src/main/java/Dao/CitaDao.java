package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Citact;

public class CitaDao {
	public void agregarCita(Citact ci) {
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		em.getTransaction().begin();
    	em.persist(ci);
		em.flush();
		em.getTransaction().commit();
	}
	
	public void aprobarCita(Citact ci) {
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		ci.getIdCT();
		ci.getEstado();
		ci.getDescripcionDC();
		ci.getFechaDC();
		ci.getHoraDC();
		ci.getMedicomdc();
		ci.getPacientepct();
		em.getTransaction().begin();
		em.merge(ci);
		em.flush();
		em.getTransaction().commit();
	}
	
	public List<Object> verCita(){
		List<Object> verCita = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		try {
			verCita = em.createQuery("SELECT c.idCT, p.nombresPct, p.apellidosPct, c.estado, c.descripcionDC, c.fechaDC, c.horaDC, p.idPct, m.idMdc "
					+ "FROM Citact AS c INNER JOIN Pacientepct AS p ON c.pacientepct.idPct = p.idPct "
					+ "INNER JOIN Medicomdc AS m ON c.medicomdc.idMdc = m.idMdc").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e.toString());
		}
		
		return verCita;
	}
	
	public List<Object> verCitaAprobada(){
		List<Object> verCita = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		try {
			verCita = em.createQuery("SELECT p.nombresPct, p.apellidosPct, c.fechaDC, c.horaDC "
					+ "FROM Citact AS c INNER JOIN Pacientepct AS p ON c.pacientepct.idPct = p.idPct "
					+ "WHERE c.estado = 'APROBADA' ").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e.toString());
		}
		
		return verCita;
	}

}
