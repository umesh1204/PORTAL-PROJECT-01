<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="com.mysql.jdbc.Connection" %>
 <%@ page import ="com.mysql.jdbc.PreparedStatement" %>
 <%@ page import ="com.mysql.jdbc.ResultSet" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<% String name=(String)session.getAttribute("name"); %>
<h1> WELCOME <%="  "+name+" "  %> what are you want to see  </h1>
<br>
<form action="marks.jsp">
<input type="submit" value="MARKS">
</form>
<br>
<form action="attandance.jsp">
<input type="submit" value="ATTANDANCE">
</form>
<br>
<form action="profileInfo.jsp">
<input type="submit" value="PROFILE">
</form>



</body>
</html>