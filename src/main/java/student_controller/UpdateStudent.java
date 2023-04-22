package student_controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student_dao.StudentDao;
import student_dto.Student;
@WebServlet("/updateStudent")
public class UpdateStudent extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//you have to find a existing Student
		String id=req.getParameter("studentId");
		Student student=new StudentDao().getStudent(Integer.parseInt(id));
		
		req.setAttribute("student", student);
		
		req.getRequestDispatcher("UpdateStudent.jsp").forward(req, resp);
		
	}

}
