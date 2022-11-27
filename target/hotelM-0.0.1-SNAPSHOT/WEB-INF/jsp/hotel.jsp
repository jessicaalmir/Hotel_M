<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <jsp:include page="navbar.jsp"/>

      <div class="row text-center">
        <h3 class="mt-3"> Hotel List</h3>
      </div>
      <div class="row justify-content-md-center">
       <table class="table table-hover table-bordered" style="width:80%">
            <thead>
            <tr class="text-center">
              <th scope="col">#</th>
              <th scope="col">Name</th>
              <th scope="col">Address</th>
              <th scope="col">Phone</th>
              <th scope="col">Email</th>
              <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${hotels}" var="hotel">
              <tr class="align-items-center">
                <th scope="row">${hotel.id}</th>
                <td>${hotel.name}</td>
                <td>${hotel.address}</td>
                <td>${hotel.phone}</td>
                <td>${hotel.email}</td>
                <td>
                  <div class="d-flex w-100 justify-content-center my-auto">
                    <div class="action-button"><a href="view-hotel/${hotel.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/plus.png" alt="Details" /></a></div>
                    <div class="action-button"><a href="edit-hotel/${hotel.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/edit.png" alt="Details" /></a></div>
                    <div class="action-button"><a href="delete-hotel?id=${hotel.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/delete.png" alt="Details" /></a></div>
                  </div>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
      </div>
</div>
      <jsp:include page="footer.jsp"/>

