<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*" import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="stylin.css" rel="stylesheet" type="text/css" />

<title>Auction Site</title>


</head>
<body bgcolor="#f2f2f2">
<div id="reg">
	<h1 style="text-align:center; font-family:Sans-serif; margin-top:10%;">Please enter your new user details:</h1>
	<form action="insertPerson.jsp" method = "post">
		<table align="center" style="margin-top:5%; text-align:left;">
			<tr>
				<td>
					<label for="fname" style="font-family:Sans-serif;">First Name:</label>				
				</td>
				<td>
					<input type="text" name="fname" id="fname"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="lname" style="font-family:Sans-serif;">Last Name:</label>				
				</td>
				<td>
					<input type="text" name="lname" id="lname"/>
				</td>
			</tr>
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
					<label for="pass" style="font-family:Sans-serif;">Create Password:</label>	
				</td>
				<td>
					<input type="text" name="pass" id="pass"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="ad" style="font-family:Sans-serif;">Admin:</label>	
				</td>
				<td>
					<div class="ad">
      					<input type="checkbox" value="yes" id="ad" name="admin" />
      				</div>
				</td>
			</tr>
		</table>		
		<div style="text-align:center; margin:2%">
			<input type = "submit" />		
		</div>
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