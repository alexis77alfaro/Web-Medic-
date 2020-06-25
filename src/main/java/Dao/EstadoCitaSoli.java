package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EstadoCitaSoli {
	
public List<Object> EstadoCitaSolicitada(){
		
		List<Object> estado = new ArrayList<>();
		
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		
		try {
			
		em.getTransaction().begin();
		
		estado = em.createQuery("SELECT m.nombresMdc, c.descripcionDC, c.fechaDC, c.horaDC, c.estado " 
				+ "FROM Medicomdc AS m " 
				+ "INNER JOIN Citact AS c ON c.medicomdc.idMdc = m.idMdc ").getResultList();
		em.getTransaction().commit();
		
		
	
			
	 }
		
	catch (Exception e) {
		System.out.println("Error "+e.toString());
		
	}

		
		return estado;
	}
		
	

}
