package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DoctorDao {
	public List<Object> verDoc(){
		List<Object> verDoc = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
					+ "FROM Medicomdc AS m INNER JOIN Especialidadesmdc AS e ON m.idMdc = e.medicomdc.idMdc").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e.toString());
		}
		
		return verDoc;
	}

}
