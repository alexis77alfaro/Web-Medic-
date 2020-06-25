package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Especialidadesmdc;
import model.Medicomdc;
import model.Pacientepct;

public class DoctorDao {
	
	public List<Object> verDoc(){
		List<Object> verDoc = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			verDoc = em.createQuery("SELECT m.idMdc, m.nombresMdc, m.apellidosMdc, e.especialidadEspMdc, m.telefonoMdc, m.correoMdc "
					+ "FROM Medicomdc AS m INNER JOIN Especialidadesmdc AS e ON m.idMdc = e.medicomdc.idMdc").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e.toString());
		}
		
		return verDoc;
	}
	
	public List<Medicomdc> loging(Medicomdc mdc){
		List<Medicomdc> loguin=new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("WebMedic");
		em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			loguin = em.createQuery("from  Medicomdc where correoMdc='"+mdc.getCorreoMdc()+"'and passMdc='"+mdc.getPassMdc()+"'").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error "+e.toString());
		}
		
		return loguin;
		
	}
	
	
	 public void agregarMedico(Medicomdc me){
		   EntityManager em;
			EntityManagerFactory emf;
			emf= Persistence.createEntityManagerFactory("WebMedic");
			em = emf.createEntityManager();
			
			
			em.getTransaction().begin();
			em.persist(me);
			em.flush();
			em.getTransaction().commit();
		   
	   }
	 
	 public void EspecialidadDoctor(Especialidadesmdc ed){
		   EntityManager em;
			EntityManagerFactory emf;
			emf= Persistence.createEntityManagerFactory("WebMedic");
			em = emf.createEntityManager();
			
			em.getTransaction().begin();
			em.persist(ed);
			em.flush();
			em.getTransaction().commit();
		   
	   }
	 
	 
	 public List<Object> UltimoIdDoctor(){
			List<Object> ultimo = new ArrayList();
			EntityManager em;
			EntityManagerFactory emf;
			emf= Persistence.createEntityManagerFactory("WebMedic");
			em = emf.createEntityManager();
			try {
				em.getTransaction().begin();
				ultimo = em.createQuery("SELECT MAX(idMdc) AS id FROM Medicomdc").getResultList();
				em.getTransaction().commit();
			} catch (Exception e) {
				System.out.println("Error "+e.toString());
			}
			
			return ultimo;
		}
	 
	
	 public List<Object> mostrarMedico(){
			List<Object> mostrar = new ArrayList();
			EntityManager em;
			EntityManagerFactory emf;
			emf= Persistence.createEntityManagerFactory("WebMedic");
			em = emf.createEntityManager();
			try {
				em.getTransaction().begin();
				mostrar = em.createQuery("SELECT m.idMdc, m.nombresMdc, m.apellidosMdc, e.especialidadEspMdc" 
						+ " FROM Especialidadesmdc AS e" 
						+ " INNER JOIN Medicomdc AS m ON e.medicomdc.idMdc = m.idMdc").getResultList();
				em.getTransaction().commit();
			} catch (Exception e) {
				System.out.println("Error "+e.toString());
			}
			
			return mostrar;
		}
		
	 
	 
	 
	 

}
