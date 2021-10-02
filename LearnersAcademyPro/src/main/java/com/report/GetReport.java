package com.report;
import com.report.dao.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getReport")
public class GetReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GetReport() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{		
		
		String classId=request.getParameter("className");
		if(classId!=null)
		{
			//response.sendRedirect("classReport.jsp");
			response.sendRedirect("classReport.jsp?cls="+classId);
		}
		
	}

}
