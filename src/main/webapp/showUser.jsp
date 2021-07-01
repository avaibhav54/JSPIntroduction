<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<h1>
all users are
</h1>

<sql:setDataSource driver="com.mysql.jdbc.Driver"   url="jdbc:mysql://localhost:3306/jstl"     user="root"   password="vaibhav"   var="ds"    />

<sql:query var="rs"    dataSource="${ds }"> select * from user;</sql:query>
<div class="container">
<table class="table">
<tr>
<td>userID</td>
<td>userName</td>
<td>userEmail</td>
</tr>
<c:forEach items="${rs.rows }"   var="row">
<tr>
<td><c:out value="${row.id }"   ></c:out></td>
<td><c:out value="${row.name }"   ></c:out></td>
<td><c:out value="${row.email }"   ></c:out></td>
</tr>
	</c:forEach>
</table>
</div>
</body>
</html>