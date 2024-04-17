package com.servlet;

import java.io.IOException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JobDao;
import com.database.DatabaseConnect;
import com.entity.Jobs;

@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String title=req.getParameter("jobtitle");
			String location=req.getParameter("location");
			String category=req.getParameter("category");
			String status =req.getParameter("status");
			String description=req.getParameter("description");
			
			Jobs j=new Jobs();
			j.setId(id);
			j.setTitle(title);
			j.setLocation(location);
			j.setCategory(category);
			j.setDescription(description);
			j.setStatus(status);
			HttpSession httpSession=req.getSession();
			JobDao dao=new JobDao(DatabaseConnect.getconn());
			boolean f=dao.updatejob(j);
			if(f=true) {
				httpSession.setAttribute("succMsg","Job Updated succesfully");
				resp.sendRedirect("viewjob.jsp");
			}
			else {
				httpSession.setAttribute("msg","Error in updating job");
				resp.sendRedirect("editjob.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
