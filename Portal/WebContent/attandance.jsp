<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import ="com.mysql.jdbc.Connection" %>
 <%@ page import ="com.mysql.jdbc.PreparedStatement" %>
 <%@ page import ="com.mysql.jdbc.ResultSet" %>
 <%@page import= "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int id=(int)session.getAttribute("id");
try{
	Connection con=(Connection)session.getAttribute("con");
	PreparedStatement pst=(PreparedStatement)con.prepareStatement("select * from attendance where id=?");
	pst.setInt(1, id);
	ResultSet rs=(ResultSet)pst.executeQuery();
	boolean k=rs.next();
	
	String name=(String)session.getAttribute("name");
	name=name.toUpperCase();
	%>
    <h1> ATTENDANCE OF  <%=" " +name+" " %></h1>
    <table border='1' width='100%'>
    <tr><th>SN</th><th>COMPUTER_NETWORK</th><th>COMPILER</th><th>WEB_DESIGN</th><th>DATA_WAREHOUSE</th>  
                 <th>SOSOLOGY</th><th>INDUSTRY_MANAGEMENT</th></tr>
     <tr><th>1</th><th><%=rs.getInt(1) %></th><th><%=rs.getInt(2) %></th><th><%=rs.getInt(3) %></th><th><%=rs.getInt(4) %></th>  
                 <th><%= rs.getInt(5) %></th><th><%=rs.getInt(6) %></th></tr>
                 </table>
<% 
}
 catch(Exception e)
{ %>
	
<% }%>
</body>
</html>