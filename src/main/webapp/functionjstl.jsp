<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style ="color:red"> jsp functional tag</h1>
<c:set var="name" value="vaibhav agarwal"></c:set>
<h1><c:out value="${name }"></c:out></h1>

<h2>
length of name is <c:out value="${fn:length(name) }"></c:out>
</h2>
<h2>
check if name has vaibhav or not::::::::: <c:out value="${fn:contains(name,'vaibhav') }"></c:out>
</h2>

<h1></h1>
</body>
</html>