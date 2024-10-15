<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.curdjsp.Dao.UserDao,com.curdjsp.user.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>User List</h1>
<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>ID</th><th>Name</th><th>Password</th><th>Email</th>
<th>City</th><th>Edit</th><th>Delete</th>

<c:forEach items="${list}" var="u">
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${ u.getPassword()}</td>
<td>${u.getEmail()}</td><td>${ u.getCity()}</td>
<td><a href="Editform.jsp?id=${u.getId()}"> Edit</a></td>
<td><a href="Delete.jsp?id=${u.getId()}"> Dselete</a></td>
</tr>
</c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a>

</body>
</html>