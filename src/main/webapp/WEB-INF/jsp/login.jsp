<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Flash System - Sign in</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/master.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="shortcut icon" href="#">
  </head>
  <body>
    <div id="login-form">
        <c:if test="${param.error == true}">
          <div class="alert alert-danger">
            <p class="ui-state-error-text">User Name or Password invalid, please verify</p>
          </div>
        </c:if>

      <div class="row">
        <div class="mx-auto" style="">
          <img alt="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" />
        </div>
      </div>
      <div class="explore">
        <h1>Sign in</h1>
      </div>
      <div class="dark-form row" id="contact-form">
        <form id="Login" action="/login" method="post">
          <table>
            <tr>
              <td class="label"><label for="username"> User Name</label></td>
              <td><label>
                <input type="text" name="username" id="username" required value="" />
              </label></td>
            </tr>
            <tr>
              <td class="label"><label for="password">Password </label></td>
              <td><input type="password" required value="" name="password" id="password" /></td>
            </tr>
            <tr>
              <td></td>
              <td>
                <input type="submit" name="Login" value="Login" class="button" id="login_button"/>
              </td>
            </tr>
          </table>
        </form>
      </div>
    </div>
  </body>
</html>
