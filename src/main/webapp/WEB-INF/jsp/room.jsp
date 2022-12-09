<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <jsp:include page="navbar.jsp"/>

      <div class="row text-center mt-5">
        <h3 class=""> Rooms </h3>
      </div>
      <div class="row">
                  <div class="col my-3 px-5">
                      <a href="/new-room">
                          <button class="btn btn-primary" type="submit">Add Room</button>
                      </a>
                  </div>
      </div>


      <div class="row justify-content-md-center">
           <table class="table" style="width:80%">
           <tbody>
            <c:forEach items="${room}" var="room">
            <tr style="height:200px">
            <td style="width:400px">
              <div class="action-button"><a href="room-details/${room.id}"><img src="${pageContext.request.contextPath}/resources/images/room/${room.image}" style="height:200px" width="400px" alt="${room.category}"/></a></div>
            </td>
            <td class="text-center"> <p> ${room.category} </p> </td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
      </div>
</div>
      <jsp:include page="footer.jsp"/>

