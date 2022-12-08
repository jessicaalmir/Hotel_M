<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="navbar.jsp"/>

     <div class="row text-center">
            <h3 class="mt-3"> Bookings List</h3>
     </div>
     <div class="row">
            <div class="col my-3 px-5">
                     <a href="/new-booking">
                         <button class="btn btn-primary" type="submit">Add Booking</button>
                     </a>
            </div>
     </div>
     <div class="row justify-content-md-center">
            <table class="table table-hover table-bordered" style="width:80%">
                 <thead>
                 <tr class="text-center">
                   <th scope="col">#</th>
                   <th scope="col">Hotel ID</th>
                   <th scope="col">Client ID</th>
                   <th scope="col">Room ID</th>
                   <th scope="col">Start Date</th>
                   <th scope="col">End Date</th>
                   <th scope="col">Actions</th>
                 </tr>
                 </thead>
                 <tbody>
                 <c:forEach items="${bookings}" var="booking">
                   <tr class="align-items-center">
                     <th scope="row">${booking.bookingId}</th>
                     <td>${booking.hotelId}</td>
                     <td>${booking.clientId}</td>
                     <td>${booking.roomId}</td>
                     <td>${booking.startDate}</td>
                     <td>${booking.endDate}</td>
                     <td>
                       <div class="d-flex w-100 justify-content-center my-auto">
                         <div class="action-button"><a href="view-booking/${booking.bookingId}"><img src="${pageContext.request.contextPath}/resources/images/icons/plus.png" alt="Details" /></a></div>
                         <div class="action-button"><a href="edit-booking/${booking.bookingId}"><img src="${pageContext.request.contextPath}/resources/images/icons/edit.png" alt="Details" /></a></div>
                         <div class="action-button"><a href="delete-booking/${booking.bookingId}"><img src="${pageContext.request.contextPath}/resources/images/icons/delete.png" alt="Details" /></a></div>
                       </div>
                     </td>
                   </tr>
                 </c:forEach>
                 </tbody>
               </table>
           </div>


 <jsp:include page="footer.jsp"/>