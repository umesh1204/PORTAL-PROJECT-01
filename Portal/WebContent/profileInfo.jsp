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
	PreparedStatement pst=(PreparedStatement)con.prepareStatement("select * from profileInfo where id=?");
	pst.setInt(1, id);
	ResultSet rs=(ResultSet)pst.executeQuery();
	boolean k=rs.next();
	
	String name=(String)session.getAttribute("name");
	name=name.toUpperCase();
	%>
    <h1> PROFILE OF  <%=" " +name+" " %></h1>
    <table border='1' width='100%'>
    <tr><th>SN</th><th>NAME</th><th>FATHER_NAME</th><th>MOBILE_NUMBER</th><th>ADDRESS</th>  
                 <th>ROLLNUMBER</th></tr>
     <tr><th>1</th><th><%=rs.getString(1) %></th><th><%=rs.getString(2) %></th><th><%=rs.getString(3) %></th><th><%=rs.getString(4) %></th>  
                 <th><%= rs.getInt(5) %></th></tr>
                 </table>
<% 
}
 catch(Exception e)
{ %>
	
<% }%>
</body>
</html>