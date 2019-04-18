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
	PreparedStatement pst1=(PreparedStatement)con.prepareStatement("select * from st1 where id=?");
	PreparedStatement pst2=(PreparedStatement)con.prepareStatement("select * from st2 where id=?");
	PreparedStatement pst3=(PreparedStatement)con.prepareStatement("select * from put where id=?");
	PreparedStatement pst4=(PreparedStatement)con.prepareStatement("select * from ut where id=?");
	pst1.setInt(1, id);
	pst2.setInt(1, id);
	pst3.setInt(1, id);
	pst4.setInt(1, id);
	ResultSet rs1=(ResultSet)pst1.executeQuery();
	ResultSet rs2=(ResultSet)pst2.executeQuery();
	ResultSet rs3=(ResultSet)pst3.executeQuery();
	ResultSet rs4=(ResultSet)pst4.executeQuery();
	boolean k1=rs1.next();
	boolean k2=rs2.next();
	boolean k3=rs3.next();
	boolean k4=rs4.next();
	
	
	String name=(String)session.getAttribute("name");
	name=name.toUpperCase();
	%>
    <h1> MARKS OF  <%=" " +name+" " %></h1>
    <table border='1' width='100%'>
    <tr><th>Exam_TYPE</th><th>COMPUTER_NETWORK</th><th>COMPILER</th><th>WEB_DESIGN</th><th>DATA_WAREHOUSE</th>  
                 <th>SOSOLOGY</th><th>INDUSTRY_MANAGEMENT</th></tr>
     <tr><th>ST-1</th><th><%=rs1.getInt(1) %></th><th><%=rs1.getInt(2) %></th><th><%=rs1.getInt(3) %></th><th><%=rs1.getInt(4) %></th>  
                 <th><%= rs1.getInt(5) %></th><th><%=rs1.getInt(6) %></th></tr>
     <tr><th>ST-2</th><th><%=rs2.getInt(1) %></th><th><%=rs2.getInt(2) %></th><th><%=rs2.getInt(3) %></th><th><%=rs2.getInt(4) %></th>  
                 <th><%= rs2.getInt(5) %></th><th><%=rs2.getInt(6) %></th></tr>
   <tr><th>PUT</th><th><%=rs3.getInt(1) %></th><th><%=rs3.getInt(2) %></th><th><%=rs3.getInt(3) %></th><th><%=rs3.getInt(4) %></th>  
                 <th><%= rs3.getInt(5) %></th><th><%=rs3.getInt(6) %></th></tr>
     <tr><th>UT</th><th><%=rs4.getInt(1) %></th><th><%=rs4.getInt(2) %></th><th><%=rs4.getInt(3) %></th><th><%=rs4.getInt(4) %></th>  
                 <th><%= rs4.getInt(5) %></th><th><%=rs4.getInt(6) %></th></tr>           
                 </table>
<% 
}
 catch(Exception e)
{ %>
	
<% }%>
</body>
</html>