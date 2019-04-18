<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<head>

<h1>WELCOME AKGEC PORTAL </h1>
</head>
<body>
<form action="login.jsp">
<input type="submit" value="login">
</form>
<br>
<form action="signUp.jsp" >
<input type="submit" value="create user and password">

</form>
<%	Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","umesh@123");
session.setAttribute("con", con);
%>
</body>
</html>