<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import ="com.mysql.jdbc.Connection" %>
 <%@ page import ="com.mysql.jdbc.PreparedStatement" %>
 <%@ page import ="com.mysql.jdbc.ResultSet" %>
 <%@page import= "java.io.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><body><% int compiler=Integer.parseInt(request.getParameter("compiler"));
int computerNetwork=Integer.parseInt(request.getParameter("computernetwork"));
int datawareHouse=Integer.parseInt(request.getParameter("datawarehouse"));
int webTech=Integer.parseInt(request.getParameter("webtech"));
int id=Integer.parseInt(request.getParameter("id"));
int sosology=Integer.parseInt(request.getParameter("sosology"));

int industrailManagement=Integer.parseInt(request.getParameter("industrialmanagement"));
try{
Connection con=(Connection)session.getAttribute("con");
PreparedStatement pst=(PreparedStatement)con.prepareStatement("insert into st2 values(?,?,?,?,?,?,?)");
pst.setInt(1,computerNetwork);
pst.setInt(2,compiler);
pst.setInt(3,webTech);
pst.setInt(5,industrailManagement);
pst.setInt(6,datawareHouse);
pst.setInt(4,sosology);
pst.setInt(7,id);
int i=pst.executeUpdate();

%>
<jsp:forward page="putmarks.jsp"></jsp:forward>
<%
}catch(Exception e)
{
	
}%>

</body>
</html>