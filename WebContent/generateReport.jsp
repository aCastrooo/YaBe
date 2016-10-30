<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		ApplicationDAO dao = new ApplicationDAO();
		
		String email=(String)session.getAttribute("email");
		String select = request.getParameter("report");
		
		
		SalesReport sr = dao.createSalesReport();
		
		if(select.equals("total")){
			long total = sr.getTotalEarnings();
			%>
				<h3 style='text-align:center; font-family:Sans-serif; font-size:30px;'>Total Earnings</h3>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>$<%= total %></p>
			<%
		}
		else if(select.equals("pitem")){
			long pItem = sr.getEarningsPerItem();
			%>
				<div class="succ">
				<h3 style='text-align:center; font-family:Sans-serif; font-size:30px;'>Total Earnings per Item</h3>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>$<%= pItem %></p>
				</div>
			<%
		}
		else if(select.equals("ptype")){
			long xb = sr.getEarningsPerXbItem();
			long ps = sr.getEarningsPerPsItem();
			long pc = sr.getEarningsPerPcItem();
			%>
				<div class="succ">
				<h3 style='text-align:center; font-family:Sans-serif; font-size:30px;'>Total Earnings per Type</h3>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>For Xbox Games:</p>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>$<%= xb %></p>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>For Playstation Games:</p>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>$<%= ps %></p>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>For PC Games:</p>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>$<%= pc %></p>
				</div>
			<%
		}
		else if(select.equals("puser")){
			long user = sr.getEarningsPerUser();
			%>
				<div class="succ">
				<h3 style='text-align:center; font-family:Sans-serif; font-size:30px;'>Total Earnings per User</h3>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>$<%= user %></p>
				</div>
			<%
		}
		else if(select.equals("bestC")){
			String bestEmail = sr.getBestCustomerEmail();
			long spent = sr.getBestCustomerSpent();
			%>
				<div class="succ">
				<h3 style='text-align:center; font-family:Sans-serif; font-size:30px;'>The Best Customer!</h3>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Email: <%= bestEmail %></p>
				<p style='text-align:center; font-family:Sans-serif; font-size:20px;'>Amount Spent: <%= spent %></p>
				</div>
			<%
			
		}
	%>
</body>
</html>