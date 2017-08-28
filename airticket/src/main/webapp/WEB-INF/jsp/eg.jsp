
 <%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.aa.entity.Flight" %>
 
<%
    ArrayList<String> list = new ArrayList<String>();
    list.add("val1");
    list.add("val2");
    list.add("val3");
    
    request.setAttribute("MyList", list);
    
    
     
  List<Flight> f = (ArrayList<Flight>)request.getAttribute("flights");
  
  Flight fl = f.get(0);
  
  System.out.println(fl.getSource());
    
%>
<html>
<body>
    <c:forEach items="${f}" var="item">
    ${item}<br>
</c:forEach>
</body>
</html>