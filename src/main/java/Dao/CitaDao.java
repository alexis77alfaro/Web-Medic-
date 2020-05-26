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
	
	public List<Object> cita(){
		List<Object> verCita = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			verCita = em.createQuery("SELECT ci.idCT, ci.estado, pa.nombresPct, me.nombresMdc"
					+ "from Citact AS ci INNER JOIN Pacientepct AS pa ON ci.idPct = pa.idPct"
					+ "INNER JOIN Medicomdc AS me ON ci.idMdc = me.idMdc ").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e);
		}
		
		return verCita;
	}

}
