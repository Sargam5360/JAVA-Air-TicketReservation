<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     

 <%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.aa.entity.Flight" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Available Flights</h2>
<%
 List<Flight> ff = (List<Flight>) request.getAttribute("flights");

Flight fl = ff.get(0);

//System.out.println(fl.getSource());
%>
 
 <br>
 
 
 
<form action="book.do" method="POST"> 
 <table>
 <tr>
 <th>Select</th>
 <th>Flight ID</th>
 <th>Source</th>
 <th>Destination</th>
 <th>Seats</th>
 <th>Date</th>
 <th>Departure Time</th>
 <th>Arrival Time</th>
 <th>Price</th>
 </tr>
<%
Flight o = null;
for(int i = 0; i< ff.size() ;i++){
	o = ff.get(i);
	
	%>
	<tr>
		<td><input type = "radio" name="rad" value=<%= o.getId() %>></td>
		<td> <%= o.getId() %> </td>
		<td> <%= o.getSource() %></td>
		<td>  <%= o.getDestination() %></td>
		<td> <%= o.getTickets() %></td>
				<td> <%= o.getDate() %></td>
				<td> <%= o.getDeparture() %></td>
				<td> <%= o.getArrival() %></td>
				<td> <%= o.getCost() %></td>
		
	</tr>
<% } %> 
</table>
 <button type="submit" id="submit">Submit</button> 
 
 </form>
 
 </body>
</html>