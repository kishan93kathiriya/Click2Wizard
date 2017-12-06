<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Click 2 Wizard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="assets/images/favicon.ico" />
    <!-- Bootstrap -->
    
    <link href="css/signin.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

    
  </head>
<body>
	<div class=" container bg1">
		<div class="navbar navbar-fixed-top">
			<div class="top"><a href="index.jsp" class="c2w">Click 2 Wizard</a></div>
		</div>
		
		<div class="divider">
		</div>
		
		<div class="row" style="margin-top: 50px;">
	        <div class="col-md-8 columns">
	            <h2 class="a1"><strong>Click 2 Wizard</strong> A Dynamic database management system</h2>
	            <h4 class="a2">Click 2 Wizard is an application platform that empowers end users to rapidly build their own business applications with zero programming, replacing generic software, databases or spreadsheets.</h4>
	        </div>
	        
	        <div class="col-md-3">
	        	<div class="field" style="width: 315px;margin: 0 auto;">  
		        	<h3>Sign-In</h3>  
		        	<% String e=(String)request.getAttribute("error"); %>
		            <form  action="<%= request.getContextPath()%>/SignIn" method="post">
			            <div class="login">
			            	<input name="username" type="text" class="input" placeholder="Username"><br>
			    			<input name="password" type="password" class="input" placeholder="Password"><br>
			    			<%if(e!=null){out.print(e);} %>
				            <input type="submit" class="login-submit" value="Submit">
			    			<input type="hidden" name="flag" value="signin">
			    		</div>
		    		</form>
		    		<a href="signup.jsp" class="button">Start Your Free Trial Today</a><br><br><br>
	    		</div>
	        </div>
  	  	</div>
  	  	
	</div>
</body>
</html>