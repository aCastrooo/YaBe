<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Past Auctions</title>
</head>
<body>
	<%
		ApplicationDAO dao = new ApplicationDAO();
		
		LinkedList<Auction> a = dao.getAllAuctions();
		LinkedList<ConsItem> b = dao.getPlaystation();
		LinkedList<ConsItem> c = dao.getXbox();
		LinkedList<PCItem> d = dao.getAllPC();
		
		for(int i=0; i<a.size(); i++){
			for(int j=0; j<b.size();j++){
				if(a.get(i).getWinnerEmail() != null 
				&& b.get(j).getId() == a.get(i).getItemId()){
					%>
					<p style='text-align:center; font-family:Sans-serif; font-size:30px;'>Game: <%= b.get(j).getName() %></p>
					<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Condition: <%= b.get(j).getCond() %></p>
					<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Winner's Email: <%= a.get(i).getWinnerEmail() %></p>
					<hr width="50%"/>			
					<%
				}
			}
			for(int j=0; j<c.size();j++){
				if(a.get(i).getWinnerEmail() != null 
				&& c.get(j).getId() == a.get(i).getItemId()){
					%>
					<p style='text-align:center; font-family:Sans-serif; font-size:30px;'>Game: <%= c.get(j).getName() %></p>
					<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Condition: <%= c.get(j).getCond() %></p>
					<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Winner's Email: <%= a.get(i).getWinnerEmail() %></p>
					<hr width="50%"/>			
					<%
				}
			}
			for(int j=0; j<d.size();j++){
				if(a.get(i).getWinnerEmail() != null 
				&& d.get(j).getId() == a.get(i).getItemId()){
					%>
					<p style='text-align:center; font-family:Sans-serif; font-size:30px;'>Game: <%= d.get(j).getName() %></p>
					<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Condition: <%= d.get(j).getCond() %></p>
					<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Winner's Email: <%= a.get(i).getWinnerEmail() %></p>
					<hr width="50%"/>			
					<%
				}
			}
		}
	
	
	%>
</body>
</html>