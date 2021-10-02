<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  page import="java.sql.*" %>
    <%@ page import= "com.report.dao.*" %>
<!DOCTYPE html>


<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<head>
<meta charset="ISO-8859-1">
<title>Learners Academy</title>

     <style>
#students {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;

}

#subjects {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
   padding: 0px;
}


#students td, #students th,#subjects td,#subjects th {
  border: 1px solid #ddd;
  padding: 8px;
}

#students tr:nth-child(even){background-color: #f2f2f2;}

#students tr:hover {background-color: #ddd;}

#subjects tr:nth-child(even){background-color: #f2f2f2;}

#subjects tr:hover {background-color: #ddd;}

#students th,#subjects th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: red;
  color: white;
}






* {
  box-sizing: border-box;
}

.row {
  margin-left:-5px;
  margin-right:-5px;
}
  
.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

</style>

<script type="text/javascript">

function goBack() {
	  window.history.back();
	}
</script>

</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
HttpSession session1=request.getSession();


    if(session.getAttribute("uname")==null)
    {

    	 response.sendRedirect("Login.jsp");
    }
%>



 <div align="center">
 <img src="D:\Phase2Project\LearnersAcademyPro\logo.jpg" style="width:280px;height:300px;align="middle"></div>

 <h3 style="color:red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Class<%=request.getParameter("cls") %> Report :</h3>
                           
        <div class="container" width="80%" align="center">

                    
                     <form id="clsReport" class="form" action=""  name="clsReport" >
                            <h3 class="text-info"></h3>
                          
                       
  <%
	String classId=request.getParameter("cls");
	 
	ReportDao ob=new ReportDao();
	ResultSet rs=ob.getStudents(Integer.parseInt(classId));
	ResultSet rs1=ob.getSubjects(Integer.parseInt(classId));
	
	String stuData="";
	try {
	
			      
		out.write( "<div class='row'>");
	      
	    out.write( "<div class='column'>");
	    
		out.write("<table id='students'>" +
			       "<tr style='background-color:#c8dce0'>" +
			       "<td >SNo</td>" +
			       
			       "<td>Student Name</td>" +
			      
			       
			       "</tr>");
		
		while(rs.next())
		{
		
			out.write("<tr>");
				    out.write("<td>");
				    out.write(rs.getString(1));
				    out.write("</td><td>");
				    out.write(rs.getString(2)+" "+rs.getString(3));
				    out.write("</td>");
					out.write("</tr>");
		}
		
		
		
	
		
			
		
		 out.write("</table>"); 
		 out.write("</div>"); 
	
		 out.write( "<div class='column'>");
		 
		 out.write("<table id='subjects'>" +
			       "<tr style='background-color:#c8dce0'>" +
			       "<td >SNo</td>" +
			       "<td >Subjects</td>" +
			       
			       "<td>Teacher</td>" +
			      
			       
			       "</tr>");
		
		while(rs1.next())
		{
		
			out.write("<tr>");
				    out.write("<td>");
				    out.write(rs1.getString(1));
				    out.write("</td><td>");
				    out.write(rs1.getString(2));
				    out.write("</td><td>");
				    out.write(rs1.getString(3)+" "+rs1.getString(4));
				    out.write("</td>");
					out.write("</tr>");
		}
		
		
		
	
		
			
		
		 out.write("</table>"); 
		 out.write("</div>");
		 out.write("</div>");
       
		out.write("</div>"); 
		
		 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

%>
                        
                            
                        </form>
                       
   
        </div>
    <br/>
      <form id="logout" class="form" action="logout" method="post">
                                
 <div align="center"><a href="classInfo.jsp" class="btn btn-info btn-md">Back</a> <input type="submit" name="submit" class="btn btn-info btn-md" value="logout">
 

    </div></form>
</body>
</html>