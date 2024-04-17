package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JobDao;
import com.database.DatabaseConnect;
import com.entity.Jobs;

@WebServlet("/addjob")
public class AddPostServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String title=req.getParameter("jobtitle");
			String location=req.getParameter("location");
			String category=req.getParameter("category");
			String status =req.getParameter("status");
			String description=req.getParameter("description");
			
			HttpSession httpSession=req.getSession();
			
			Jobs j=new Jobs();
			j.setTitle(title);
			j.setDescription(description);
			j.setLocation(location);
			j.setStatus(status);
			j.setCategory(category);
			JobDao dao=new JobDao(DatabaseConnect.getconn());
			boolean f=dao.addJobs(j);
			if(f=true) {
				httpSession.setAttribute("succMsg","Job Posted succesfully");
				resp.sendRedirect("addjob.jsp");
			}
			else {
				httpSession.setAttribute("msg","Error in posting job");
				resp.sendRedirect("addjob.jsp");
			}
			
		}
		
		catch (Exception e) {
			
		}
	}
	

}
