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
			verCita = em.createQuery("SELECT c.idCT, p.nombresPct, p.apellidosPct, c.estado, d.descripcionDC, d.fechaDC "
					+ "FROM Citact AS c INNER JOIN Pacientepct AS p ON c.pacientepct.idPct = p.idPct "
					+ "INNER JOIN Detallecitadc AS d ON c.idCT = d.citact.idCT").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e.toString());
		}
		
		return verCita;
	}

}
