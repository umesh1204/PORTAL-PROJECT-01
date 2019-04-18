<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<h1>SIGNUP YOUR PROFILE HERE</h1>
</head>
<body>
<form action="regProfileInfo.jsp" method="post">
<table>
<tr><td>NAME:</td><td><input type="text" name="name"/></td></tr>
<tr><td>FATHER NAME:</td><td><input type="text" name="fathername"/></td></tr>
<tr><td>MOBILE NUMBER:</td><td><input type="text" name="mobilenumber"/></td></tr>
<tr><td>ADDRESS:</td><td><input type="text" name="address"/></td></tr>
<tr><td>ID:</td><td><input type="text"   name="id"/></td></tr>
<tr><td>USERNAME:</td><td><input type="text" name="userid"/></td></tr>
<tr><td>PASSWORD:</td><td><input type="text" name="password"/></td></tr>     
</table>
  <input type="submit" value="submit"/>
</form>

</body>
</html>