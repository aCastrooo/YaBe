<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		ApplicationDAO dao = new ApplicationDAO();
	
		String updateString = "";
		String newMin = request.getParameter("minprice");
		String newWin = request.getParameter("autowin");
		String auctID = request.getParameter("auctionid");
		
		if(auctID.equals("")){
			response.sendRedirect("changeInfo.jsp");
		}
		
		double res = Double.parseDouble(newMin);
		double aw = Double.parseDouble(newWin);
		int id = Integer.parseInt(auctID);
		
		if(res == 0 && aw == 0){
			updateString = "delete from auctions where auction_id=" + id + ";";
		}
		else{
			updateString = "update auctions set reserve=" + res + ", autowin=" + aw + " where auction_id=" + id +";";
		}
		
		dao.updateAuction(updateString);
		response.sendRedirect("changeSUCC.jsp");
			
	
	%>
</body>
</html>