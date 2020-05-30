package Dao;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Pacientepct;

public class PacienteDao {
	
	public List<Pacientepct> logInPaciente(Pacientepct pa){
		List<Pacientepct> listaPac = new ArrayList<>();
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaPac= em.createQuery("from Pacientepct where correoPct = '"+pa.getCorreoPct()+"' and passPct = '"+pa.getPassPct()+"' ").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			System.out.println("Ha ocurrido un error: "+e);
		}
		
		return listaPac;
	}
	
	   public void agregarpacientes(Pacientepct pac){
		   EntityManager em;
			EntityManagerFactory emf;
			emf= Persistence.createEntityManagerFactory("WebMedic");
			em = emf.createEntityManager();
			
			
			em.getTransaction().begin();
			em.persist(pac);
			em.flush();
			em.getTransaction().commit();
		   
	   }

}
