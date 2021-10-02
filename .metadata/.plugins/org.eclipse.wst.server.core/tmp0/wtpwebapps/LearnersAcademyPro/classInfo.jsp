<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Learners Academy</title>
<script type="text/javascript">
function required() 
{
	var cls=document.getReport.className.value;
	
	
  if (cls == 0)
   { 
      alert("Please Select Class");  
      
      return false; 
   } 
  else
	  return true;
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
  <br/>  

<div align="right">
 <form id="logout" class="form" action="logout" method="post"> <input type="submit" name="submit" class="btn btn-info btn-md" align="right" value="logout" margin="10px"/>
    </form></div>

 <div align="center">
 <img src="D:\Phase2Project\LearnersAcademyPro\logo.jpg" style="width:280px;height:300px;align="middle">
 
 
    <div id="login">
       
     
        <div class="container">
         
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                    
                    
                    
                     <form id="getReport" class="form" action="getReport" method="post" name="getReport" onSubmit="return required();">
                           
                            <div class="form-group" align="left">
                                  <label for="username" class="text-info" >Select Class:</label><br>
                                
                                
                                  <select name="className" id="className" class="form-control">
                                  <option value="0">Select Class</option>
								  <option value="1">Class1</option>
								  <option value="2">Class2</option>
								  <option value="3">Class3</option>
								  <option value="4">Class4</option>
								  <option value="5">Class5</option>
								  <option value="6">Class6</option>
								  <option value="7">Class7</option>
								  <option value="8">Class8</option>
								  <option value="9">Class9</option>
								  <option value="10">Class10</option>
								 
								  
								</select>
                            </div>
                            
     <div class="form-group" align="left">
                                
                                <input type="submit" name="Submit" class="btn btn-info btn-md" value="Submit">
                            </div>     
                         
                            
                        </form>
                    
                   
              
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>