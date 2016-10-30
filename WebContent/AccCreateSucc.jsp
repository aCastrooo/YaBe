<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="stylin.css" rel="stylesheet" type="text/css" />
<title>Success!</title>
</head>
<body bgcolor="#f2f2f2">

<%
	String admin = (String)session.getAttribute("admin?");
	if(admin != null){
	if(admin.equals("yes")){
		%>
		<div class="succ">
			<h1 style="font-family:Sans-serif;text-size:40px;">Customer Representative Created!</h1>
			<h2 style="font-family:Sans-serif;">Click below to go back home</h2>
			<a href="indexAdmin.jsp" style="text-decoration:none;">
				<button style="margin:5px;">Home</button>
			</a>
		</div>
		<%
	}
	
	else {
		%>
		<div class="succ">
			<h1 style="font-family:Sans-serif;text-size:40px;">Account Created!</h1>
			<h2 style="font-family:Sans-serif;">Click below to go back home</h2>
			<a href="index.jsp" style="text-decoration:none;">
				<button style="margin:5px;">Home</button>
			</a>
		</div>
		<%
	}
	}else {
		%>
		<div class="succ">
			<h1 style="font-family:Sans-serif;text-size:40px;">Account Created!</h1>
			<h2 style="font-family:Sans-serif;">Click below to go back home</h2>
			<a href="index.jsp" style="text-decoration:none;">
				<button style="margin:5px;">Home</button>
			</a>
		</div>
		<%
	}
	
%>
</body>
</html>