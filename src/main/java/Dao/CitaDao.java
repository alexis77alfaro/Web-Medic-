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
	
	public List<Object> verCita(){
		List<Object> verCita = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			verCita = em.createQuery("SELECT c.idCT, c.estado, pa.nombresPct, me.nombresMdc from Citact AS c INNER JOIN Pacientepct AS pa ON c.idPct = pa.idPct INNER JOIN Medicomdc AS me ON c.idMdc = me.idMdc ").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e.toString());
		}
		
		return verCita;
	}

}
