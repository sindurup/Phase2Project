package com.report.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.CallableStatement;

public class ReportDao
{
	public ResultSet getStudents(int id)
	{
		
	    Connection con;
	    CallableStatement st=null;
	    ResultSet rs=null;
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/academy","root","root");
		//st=con.createStatement();
		st=con.prepareCall("{call getStudentList(?)}");
		st.setInt(1, id);
		
		st.execute();
	    rs=st.getResultSet();

		}
		
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		
		return rs;
	}
	
	
	public ResultSet getSubjects(int id)
	{
	    Connection con;
	    CallableStatement st=null;
	    ResultSet rs=null;
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/academy","root","root");
		//st=con.createStatement();
		st=con.prepareCall("{call getsubjectsList(?)}");
		st.setInt(1, id);
		
		st.execute();
	    rs=st.getResultSet();

		}
		
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		
		return rs;
	}

}
