package com.login;
import com.login.dao.LoginDao;
import com.login.model.LoginModel;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String uname=request.getParameter("username");
		String pw=request.getParameter("password");
		PrintWriter out=response.getWriter();
		
		HttpSession session;
		
		
		LoginDao ob=new LoginDao();
		boolean flag=ob.getLogin(uname, pw);
		if(flag==true)
		{
			session=request.getSession();
			session.setAttribute("uname", uname);
			session.setAttribute("pw", pw);
			response.sendRedirect("classInfo.jsp");
		}
		
		else
		{
			
			out.println("Invalid Credentials");
		}	
			
			
		
		
		
	}

}
