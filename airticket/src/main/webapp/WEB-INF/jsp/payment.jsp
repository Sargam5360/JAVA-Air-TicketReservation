<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>
<h3>Enter Payment Details:</h3>
<form action="http://localhost:9548/airticket/rest/CardService/pay" method="POST"> 

Card name:<input type = "text" value="<%=request.getAttribute("name") %>">
Card Number:<input type = "int" name = "cvv" />
CVV:<input type="text" name="pwd">
Amount: <input type="number" name = "amuont" value="<%=request.getAttribute("flightcost") %>"/>
<button type="submit" id="signin">Pay!</button> 
 
 Incorprate regular expression over here to check credit card number.
 
 Create new service of a MasterCard to pay the payments. 
 
</form>
</body>
</html>