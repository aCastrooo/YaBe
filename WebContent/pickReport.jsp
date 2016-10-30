<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction Site | Admin</title>
</head>
<body>
	<body bgcolor="#f2f2f2">
<div id="reg">
	<form action="generateReport.jsp" method = "post">
		<table align="center" style="margin-top:5%; text-align:left;">
			<tr>
				<td>
					<h5>Total Earnings: </h5><input type="radio" name="report" value="total" />
					<h5>Earnings per Item:</h5><input type="radio" name="report" value="pitem" />
					<h5>Earnings per Type:</h5><input type="radio" name="report" value="ptype" />
					<h5>Earnings per User:</h5><input type="radio" name="report" value="puser" />
					<h5>Best Customer</h5><input type="radio" name="report" value="bestC" />
					
				</td>			
			</tr>
		</table>		
		<div style="text-align:center; margin:2%">
			<input type = "submit" value="Generate"/>		
		</div>
	</form>
	<br>
		<br>
		<br>
		<br>
			<a href="indexAdmin.jsp" style="text-decoration:none;">
				<button style="padding:10px; name:xbSearch;">Home</button>
			</a>		
			<br>
</div>
</body>
</html>