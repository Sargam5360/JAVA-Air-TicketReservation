<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Flight Details</title>
</head>
<body>

<form action="display.do" method="POST">
<h1>Search Flights!</h1>
<table>
<tr><td>
Source: </td><td><input type = "text" name = "from" ></td>
</tr><tr><Td>
 Destination:</Td><td> <input type = "text" name = "to">
</td></tr></table>
<br>
<button type="submit" id="signin">Login</button> 

<br>

</form>
<table>
<tr>
<td>DFW</td><td>Dallas-Fort Worth</td>
</tr><tr>
<td>RDM</td><td>Raleigh-Durham</td>
</tr><tr>
<td>SEA</td><td>Seattle-Tacoma</td>
</tr><tr>
<td>NYC</td><td>New York</td>
</tr><tr>
<td>LAX</td><td>Los Angeles</td>
</tr><tr>
<td>BTV</td><td>Burlington Vermont</td>
</tr>
</table>
</body>
</html>