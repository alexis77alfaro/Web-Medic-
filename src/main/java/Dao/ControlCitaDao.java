package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ControlCitaDao {
	
	
public List<Object> ControlCita(){
		
		List<Object> control = new ArrayList<>();
		
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		
		try {
			
		em.getTransaction().begin();
		
		control = em.createQuery("SELECT p.nombresPct, c.descripcionDC, m.nombresMdc, c.fechaDC, c.horaDC"
				+ "  FROM  Citact AS c "
				+ " INNER JOIN Pacientepct AS p ON  c.pacientepct.idPct = p.idPct"
				+ " INNER JOIN Medicomdc As m ON c.medicomdc.idMdc = m.idMdc").getResultList();
		em.getTransaction().commit();
		
		
	
			
	 }
		
	catch (Exception e) {
		
		System.out.println(e);
		
	}

		
		return control;
	}
		
	

}
