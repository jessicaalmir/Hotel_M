<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Booking Sys</title>
    <link href ="${pageContext.request.contextPath}/resources/styles/navbar.css" rel="stylesheet">
    <link href ="${pageContext.request.contextPath}/resources/styles/master.css" rel="stylesheet">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<header>
    <a href="home"><img class="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Flash Travels logo"></a>
    <h1>Flash System</h1>
</header>
<body>
    <nav class="navbar navbar-dark navbar-expand" style="background-color: #112c3c">
        <ul class="navbar-nav mr-auto">
            <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/hotel">Hotel</a></li>
            <li><a href="${pageContext.request.contextPath}/booking">Booking</a></li>
            <li><a href="${pageContext.request.contextPath}/checking">Check-In</a></li>
            <li><a href="${pageContext.request.contextPath}/">Reservation</a></li>
            <li><a href="${pageContext.request.contextPath}/payment">Payment</a></li>
        </ul>
    </nav>
            <%-- <li><a href="profile.jsp">
            <% if(session.getAttribute("username")!=null) {%>
                            Hi <%=session.getAttribute("username")%> !!
            <%} %>
            </a></li> --%>
    <div class="container">
