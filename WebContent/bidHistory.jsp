<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bid History</title>
</head>
<body>
	<%
		ApplicationDAO dao = new ApplicationDAO();
		
		String aucID = request.getParameter("aid");
		int ID = Integer.parseInt(aucID);
		
		LinkedList<Bid> b = dao.getAllBids();
		%>
		<div style="text-align:center;">
			<table style="border:2px solid black"> 
				<tr> 
					<th style="border:2px solid black">Email</th> 
					<th style="border:2px solid black">Amount</th> 
					<th style="border:2px solid black">Date and Time</th> 
				</tr> 	
		
		<%
		for(int i=0; i<b.size(); i++){
			if(b.get(i).getAuctionId() == ID){
				%>
				<tr>
					<td style="border:2px solid black"><%= b.get(i).getEmail() %></td>
					<td style="border:2px solid black"><%= b.get(i).getAmount() %></td>
					<td style="border:2px solid black"><%= b.get(i).getBidDate() %></td>
				</tr>
				<%
			}
		}
	
	%>
	</table>
	</div>
</body>
</html>