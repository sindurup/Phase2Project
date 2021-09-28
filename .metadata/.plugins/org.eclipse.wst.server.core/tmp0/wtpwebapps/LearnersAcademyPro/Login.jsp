<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<head>
<meta charset="ISO-8859-1">
<script type="text/javascript">
function required() 
{
	var uname=document.login.username.value;
	var pw=document.login.password.value;
	
  if (uname == "")
   { 
      alert("Please enter user name");  
      document.login.username.focus();
      return false; 
   } 
  else if(pw == "")
  {
     alert("Please enter password"); 
     document.login.password.focus();
      return false; 
   }  
  else if ((uname.length<5)||(uname.length>15))
  { 
     alert("Username of invalid length");  
     document.login.username.focus();
     return false; 
  } 
  else if ((pw.length<7)||(pw.length>15))
  { 
     alert("Password length should be 7 to 15 digits");  
     document.login.password.focus();
     return false; 
  } 
  else
	  {
        return true; 
	  }
  
  
 
  
 } 


</script>
<title>Learners Academy</title>
</head>
<body>

 <div align="center"><label ><h1 class="text-center text-info"><font color="0C6486" size="50px"><b>Learners Academy</b></font></h1></label>
 <img src="D:\Phase2Project\LearnersAcademyPro\1.png" style="width:70px;height:80px;" align="middle"></div>
    <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login" name="login" class="form" action="login" method="post" onSubmit="return required();" >
                            <h3 class="text-center text-info">Admin Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                
                                <input type="submit" name="Login" class="btn btn-info btn-md" value="Login" onClick="return required();">
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>