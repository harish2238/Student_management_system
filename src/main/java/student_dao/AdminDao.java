package student_dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import student_dto.Admin;

public class AdminDao {
	
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dimple");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	public void AdminSignUp(Admin admin)
	{
		et.begin();
		em.persist(admin);
		et.commit();
	}
	
	public Admin AdminLogin(String email,String password)
	{
		try {
			Query query=em.createQuery("select a from Admin a where a.adminEmail=?1 and a.adminPassword=?2");
			query.setParameter(1, email);
			query.setParameter(2, password);
			
			Admin admin =(Admin) query.getSingleResult();
			return admin;
		} catch (Exception e) {
			return null;
		}
	}
	
	public void updateAdmin(Admin admin)
	{
		et.begin();
		em.merge(admin);
		et.commit();
	}
}
