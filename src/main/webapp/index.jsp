<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<h1>Hello world this is jsp intro </h1>
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
</h1>

</body>
</html>