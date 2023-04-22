package student_dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import student_dto.Admin;
import student_dto.Student;

public class StudentDao {
	
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dimple");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	//to save Student
	public void saveStudent(Student student)
	{
		et.begin();
		em.persist(student);
		et.commit();
	}
	
	public List<Student> GetAllStudents(Admin admin){
		Query query=em.createQuery("select s from Student s where s.admin=?1");
		query.setParameter(1, admin);
		List students=query.getResultList();
		return students;
	}
	
	//to find an student
	public Student getStudent(int id)
	{
		Student student=em.find(Student.class, id);
		return student;
	}
	
	//to update an student
	public void updateStudent(Student student)
	{
		et.begin();
		em.merge(student);
		et.commit();
	}
	
	//to delete an student
	public void deleteStudent(int id)
	{
		et.begin();
		em.remove(em.find(Student.class, id));
		et.commit();
	}

}
