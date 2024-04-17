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

@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			HttpSession httpSession=req.getSession();
			JobDao dao=new JobDao(DatabaseConnect.getconn());
			boolean f=dao.deleteJob(id);
			if(f=true) {
				httpSession.setAttribute("succMsg","Job Deleted succesfully");
				resp.sendRedirect("viewjob.jsp");
			}
			else {
				httpSession.setAttribute("msg","Error in deleting job");
				resp.sendRedirect("viewjob.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
