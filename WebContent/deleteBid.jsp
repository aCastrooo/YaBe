<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Bid</title>
</head>
<body>
	<%
		ApplicationDAO dao = new ApplicationDAO();
		String bidID = request.getParameter("bidid");
		
		if(bidID != null)
			dao.deleteBids(bidID);
	%>
	
	<form action="deleteBid.jsp" method = "post">
		<div class="succ">
			<h1 style="font-family:Sans-serif;text-size:40px;">Enter ID of Bid To Be Deleted</h1>
			<input type="text" name="bidid">
			<input type="submit" value="Delete Bid">
		</div>
	</form>
	
	
</body>
</html>