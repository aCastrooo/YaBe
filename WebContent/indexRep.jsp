<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction Site | Customer Rep. Dashboard</title>
</head>
<body>
	<%
		String email = (String)session.getAttribute("email");
		String name = (String)session.getAttribute("first_name");
	%>


	<div style="color:#1a1a1a;
			text-align:center;
			margin: 15px;
			margin-top: 15%;
			font-size:50px;
			">
			<p style="font-family:Sans-serif;"><b>Yabe</b></p>
			<p style="font-family:Sans-serif; font-size:30px"><b>Welcome, <%= name %>!</b></p>
	</div>

	<div id="search-bar" style="text-align:center; margin-top: 5%; margin-bottom:5%;">

		<!-- WE'RE GOING TO NEED A SEARCH.JSP -->

		<form action="search.jsp">
			<input type="text" name="search-bar" placeholder="Search Here">
			<input type="submit" value="Search!">
		</form>
	</div>

	<div id="buttons" style="text-align:center;">
		</a>
			<a href="ps_search.jsp" style="text-decoration:none;">
				<button style="padding:10px; name:psSearch;">Search for Playstation Games</button>
			</a>
			<a href="xb_search.jsp" style="text-decoration:none;">
				<button style="padding:10px; name:xbSearch;">Search for Xbox Games</button>
			</a>
			<a href="pc_search.jsp" style="text-decoration:none;">
				<button style="padding:10px; name:pcSearch;">Search for PC Games</button>
		</a>
	</div>
	<br>
	<br>

	<div id="buttons" style="text-align:center;">
		<a href="loggingout.jsp" style="text-decoration:none;">
			<button style="padding:10px; name:LogOut;">Log Out</button>
		</a>
		<a href="ListItem.jsp" style="text-decoration:none;">
			<button style="padding:10px; name:listitems;">List An Item</button>
		</a>
		<a href="answer.jsp" style="text-decoration:none;">
			<button style="padding:10px; name:ansQs;">Answer Customer Questions</button>
		</a>
		<a href="deleteBid.jsp" style="text-decoration:none;">
			<button style="padding:10px; name:deleteBids;">Delete Bids</button>
		</a>
		<a href="changeInfo.jsp" style="text-decoration:none;">
			<button style="padding:10px; name:changeAuct;">Change Auction Information</button>
		</a>
	</div>
</body>
</html>
