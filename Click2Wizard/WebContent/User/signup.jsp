<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Sign Up</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="assets/images/favicon.ico" />
    <!-- Bootstrap -->
    
    <link href="assets/css/signup.css" rel="stylesheet">

    
  </head>
<body class="bg1">
	
		<form class="login-form" action="<%= request.getContextPath()%>/signup_servlet" method="post">
		 	
		 	<input type="hidden" value="in" name="f">
			
				<div class="field">
					<h1>Create An Account</h1>
					Name :				<input class="input" placeholder="First Name" name="fn" id="Firstname" minlength="8" autofocus="autofocus" type="text"><br>
										<input style="clear:both;float: right;"  class="input" placeholder="Last Name" name="ln" id="lastname" minlength="8" autofocus="autofocus"  type="text"><br><br>
									
					Email :				<input class="input" placeholder="Eamil ID" name="email" id="username" type="email"><br><br>
								
					Create a password :	<input class="input" placeholder="Password" name="password" id="password" type="password"><br><br>
					
					Confirm password :	<input class="input" placeholder="Confirm Password" name="password1" id="confirm password" type="password"><br><br>
								
					Phone No. :			<input class="input" placeholder="Ph No." name="pn" id="username" type="number"><br><br>
								
					Date of birth : 	<input class="input" type="date" name="dob" value="male" id="dob"><br><br>
					
					Gender :			<input name="gender" value="male" type="radio" id="male">
											<label class="gender" for="male">Male</label> 
													
										<input name="gender" value="female" type="radio" id="female">
											<label class="gender" for="female">Female</label><br><br>
										
					Country :			<input class="input" placeholder="Country" name="country" id="username" type="text"><br><br>
								
					Security question :	<select class="input" name="que" >
											<option value="que1">What's your favorite food ?</option>
											<option value="que2">What's your childhood name ?</option>
											<option value="que3">What's your favorite movie ?</option>
											<option value="que4">What's your pet name ?</option>													
										</select><br>
										<input class="input" placeholder="Answer" name="ans" id="username" type="text"><br><br>
													
					<div class="buttons">
						<input type="submit" class="login-submit" value="Submit">
					</div><br>

				</div>
			
		</form>
	
</body>
</html>