package com.login.dao;
import java.sql.*;

public class LoginDao
{

	public boolean getLogin(String name, String pw)
	{
		boolean flag=false;
	    Connection con;
	    Statement st;
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/academy","root","root");
		st=con.createStatement();
		ResultSet rs=st.executeQuery("Select * from admin_login where user_name='"+name+"' and password='"+pw+"'");
		if(rs.next())
		{
			flag=true;
		}
		else
		{
			flag=false;
		
		}
		}
		
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		return flag;
		
		
	}
}
