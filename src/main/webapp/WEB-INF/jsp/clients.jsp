<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <jsp:include page="navbar.jsp"/>

      <div class="row text-center mt-5">
        <h3 class=""> Client List</h3>
      </div>
        <div class="row">
            <div class="col my-3 px-5">
                <a href="/clients_newAdd">
                    <button class="btn btn-primary" type="submit">Add Client</button>
                </a>
            </div>
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
<<<<<<< Updated upstream
            <c:forEach items="${clients}" var="client">
              <tr class="align-items-center">
                <th scope="row">${client.id}</th>
                <td>${client.name}</td>
                <td>${client.address}</td>
                <td>${client.phone}</td>
                <td>${client.email}</td>
            <td>
                              <div class="d-flex w-100 justify-content-center my-auto">
                                <div class="action-button"><a href="view-clients/${client.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/plus.png" alt="Details" /></a></div>
                                <div class="action-button"><a href="edit-clients/${client.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/edit.png" alt="Details" /></a></div>
                                <div class="action-button"><a href="delete-clients/${client.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/delete.png" alt="Details" /></a></div>
=======
            <c:forEach items="${clients}" var="clients">
              <tr class="align-items-center">
                <th scope="row">${clients.id}</th>
                <td>${clients.name}</td>
                <td>${clients.address}</td>
                <td>${clients.phone}</td>
                <td>${clients.email}</td>
            <td>
                              <div class="d-flex w-100 justify-content-center my-auto">
                                <div class="action-button"><a href="clients_view/${clients.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/plus.png" alt="Details" /></a></div>
                                <div class="action-button"><a href="clients_edit/${clients.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/edit.png" alt="Details" /></a></div>
                                <div class="action-button"><a href="clients_delete/${clients.id}"><img src="${pageContext.request.contextPath}/resources/images/icons/delete.png" alt="Details" /></a></div>
>>>>>>> Stashed changes
                              </div>
                            </td>

              </tr>
            </c:forEach>
            </tbody>
          </table>
      </div>
</div>
      <jsp:include page="footer.jsp"/>

