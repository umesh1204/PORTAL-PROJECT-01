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
<body>
<%String name=request.getParameter("name");
String fathername=request.getParameter("fathername");
String mobilenumber=request.getParameter("mobilenumber");
String address=request.getParameter("address");
int id=Integer.parseInt(request.getParameter("id"));
String username=request.getParameter("userid");
String password=request.getParameter("password");
try{
Connection con=(Connection)session.getAttribute("con");
PreparedStatement pst=(PreparedStatement)con.prepareStatement("insert into profileInfo values(?,?,?,?,?)");
PreparedStatement pst1=(PreparedStatement)con.prepareStatement("insert into validation values(?,?,?,?)");
pst.setInt(5, id);
pst.setString(1,name);
pst.setString(2,fathername);
pst.setString(3,mobilenumber);
pst.setString(4,address);

int i=pst.executeUpdate();
pst1.setString(1,username);
pst1.setString(2,password);
pst1.setInt(3,id);
pst1.setString(4,name);
int j=pst1.executeUpdate();

%>
<jsp:forward page="st1marks.jsp"></jsp:forward>

	<%="plese enter valid data" %>
	<jsp:include page="signUp.jsp"></jsp:include>
	
	

<%	
}catch(Exception e)
{%>
	<%="plese enter valid data" %>
<jsp:include page="signUp.jsp"></jsp:include>

<% }

	%>


</body>
</html>