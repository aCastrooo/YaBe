<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="stylin.css" rel="stylesheet" type="text/css" />
<title>Auction Site</title>
</head>
<body bgcolor="#f2f2f2">
<div id="login">
	<h1 style="text-align:center; font-family:Sans-serif; margin-top:10%;">Enter your details to log in:</h1>
		<form action="LoginCheck.jsp" method = "get">
			<table align="center" style="margin-top:5%; text-align:left;">
				<tr>
					<td>
						<label for="email" style="font-family:Sans-serif;">Email:</label>
					</td>
					<td>
						<input type="text" name="email" id="email"/>
					</td>
				</tr>
				<tr>
					<td>
			<label for="pass" style="font-family:Sans-serif;">Password:</label>
					</td>
						<td>
						<input type="password" name="pass" id="pass"/>
					</td>
				</tr>
			</table>	
			<input type = "submit" class="subBtn"/>			
		</form>
		<br>
		<br>
		<br>
		<br>
		<a href="index.jsp">Home</a>
		<br>
		
</div>
	
</body>
</html>