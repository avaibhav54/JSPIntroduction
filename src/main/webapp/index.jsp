<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
*{
margin:0px;;
padding:0px;
}
</style>
</head>


<body>


<! page directive tag!>
<%@page import="java.util.*,java.io.*"  %>
<!include directive tag!>
<%@include file="header.jsp"  %>



<!taglib tag!>
<c:set var="name" value="vaibhav "   scope="application"></c:set>
<c:set var="i" value="23"   scope="application"></c:set>

<c:out value="${name }"></c:out>

<c:out value="${i }"></c:out>
<c:if test="${i>22 }">
<h2>hey condition true</h2>
</c:if>
<hr>

<h1 style ="color:red">choose when otherwise tag</h1>
<c:choose>
<c:when test="${i>0 }">
<h1>positive number</h1>
</c:when>
<c:when test="${i==0 }">
<h1>Zero</h1>
</c:when>
<c:when test="${i<0 }">
<h1>Negativve number</h1>
</c:when>
<c:otherwise>
<h1>Default case</h1>
</c:otherwise>
</c:choose>
<br>
<hr>

<h1 style ="color:red">loop tag </h1>

<c:forEach var="j" begin="1" end="10">
<h3>The value of j is <c:out value="${j }"></c:out></h3>
</c:forEach>

<br>
<hr>

<!  declarative tag!>
<%!
int a=5;
int b=5;
public int sum()
{
	return a+b;
}
String name="vaibhav";
public String reverse()
{
	StringBuilder st=new StringBuilder(name);
	return st.reverse().toString();
}

%>

<!scriptlet tag  !>
<%
out.println("the value of a is"+a);
out.println("<br>");
out.println("value of b is"+b+"<br>");
out.println("Sum is "+sum()+" <br>");
%>

<!expression tag!>
<h1>
the reverse of <%= name  %> is <%= reverse() %>
</h1>


<h1>
Random number:
<%
Random rd=new Random();
out.println(rd.nextInt(6));
%>
<br>
<br>
<br>
<br>
<h1>
just checking for error page
</h1>
<%!
int a1=100;
		int b1=10;
%>
<%
int div=a1/b1;
%>
the division is <%= div %>
</h1>

</body>
</html>