<%@page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="Component/allCss.jsp" %>
<style type="text/css">
.back-img{
background: url("img/call.jpg");
width: 40%;
height: 80vh;
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body>
<%@include file="Component/navbar.jsp" %>

<div class="container-fluid back-img text-center text-success ">
<h2>Welcome to PhoneBook App</h2>
</div>
<%@include file="Component/footer.jsp" %>
</body>
</html>