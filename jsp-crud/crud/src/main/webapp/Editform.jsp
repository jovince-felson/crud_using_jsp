<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.curdjsp.Dao.UserDao,com.curdjsp.user.User"%>
<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<h1>Edit form</h1>
<form action="edituser.jsp" method="post">
<input type="hidden" name="id" value="<%= u.getId()%>"/>
<table>
<tr>
<td>Id:</td>
<td> <input type="text" name="id"/></td>
</tr>
<tr>
<td>Name:</td>
<td> <input type="text" name="name" value="<%= u.getName()%>"/></td>
</tr>
<tr>
<td>Password:</td>
<td> <input type="password" name="password" value="<%= u.getPassword()%>"/></td>
</tr>
<tr>
<td>Email:</td>
<td> <input type="email" name="email" value="<%=u.getEmail()%>"/></td>
</tr>
<tr>
<td>Country :</td>
<td><select name="city" stytle="width:150px">
<option>Thanjavur</option>
<option>Chennai</option>
<option>Trichy</option>
<option>Cbe</option>
<option>Others</option>

</select></td>
</tr>

<tr> <td colspan="2">
<input type="submit" value="Edit User"/></td></tr>
</table>


</form>

</body>
</html>