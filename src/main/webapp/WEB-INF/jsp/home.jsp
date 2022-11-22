<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Flash Travels Agency</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/master.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <meta name="viewport" content="width=deviace-width, initial-scale=1">
  </head>
  <body>
    <div id="container">


      <div>
        <jsp:include page="navbar.jsp"/>
      </div>
      <div class="desktop">
      	<div class="banner-desktop">
        </div>
      </div>
      <jsp:include page="footer.jsp"/>
    </div>
  </body>
</html>
