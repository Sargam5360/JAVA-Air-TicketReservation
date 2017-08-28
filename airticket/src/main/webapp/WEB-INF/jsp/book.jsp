<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
        <%@ page import="java.io.*"%>
    
    <%@ page import="com.aa.entity.Flight" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="payment.do" method="POST"> 

Flight id  = <%=(request.getAttribute("book1")) %>
<br>
Enter Passenger details:
<br>
<table>
<tr>
<td>Name :</td><td> <input type = "text" name="pname"></td>
</tr><tr>
<td>Age : </td><td><input type = "text" name="page"></td>
</tr><tr>
<td>Mobile :</td><td> <input type = "number" name="pnum"></td>
</tr>
</table>
<input type="hidden" name="flightid" value="<%=(request.getAttribute("book1")) %>">
 <button type="submit" id="submit">Book</button> 

</form>
</body>
</html>