<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/booking";
        }
    </script>
<div class="row">
    <c:choose>
        <c:when test="${deleted==true}">
            <div class="alert alert-success" role="alert">
                ${message}
            </div>
        </c:when>
        <c:when test="${deleted==false}">
            <div class="alert alert-danger" role="alert">
                ${message}
            </div>
        </c:when>
    </c:choose>
</div>
<c:if test ="${message==null}">
    <form:form method="post" action="${pageContext.request.contextPath}/delete-booking" modelAttribute="booking">
      <div class="row text-center">
        <h3 class="mt-3">This booking will be deleted</h3>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="bookingId">Booking Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="bookingId" id="bookingId" path="bookingId" type="text" class="form-control" value="${booking.bookingId}" readonly  />
                      </div>
                  </div>
              </fieldset>
          </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="HotelId">HotelId</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="HotelId" id="HotelId" path="HotelId" type="text" class="form-control" value="${booking.hotelId}" readonly  />
                      </div>
                  </div>
              </fieldset>
          </div>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="roomId">Room Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="roomId" id="roomId" path="roomId" type="text" class="form-control" value="${booking.roomId}" readonly  />
                      </div>
                  </div>
              </fieldset>
           </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="clientId">Address</label>
                      </div>
                      <div class="col-lg-6">
                          <input id="clientId" name="clientId" path="clientId" type="text" class="form-control" value="${booking.clientId}" readonly  />
                      </div>
                  </div>
              </fieldset>
          </div>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="startDate">Start Date</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="startDate" id="startDate" path="startDate" type="text" class="form-control" value="${booking.startDate}" readonly  />
                      </div>
                  </div>
              </fieldset>
          </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="endDate">End Date</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="endDate" id="endDate" path="endDate" type="text" class="form-control" value="${booking.endDate}" readonly  />
                      </div>
                  </div>
              </fieldset>
          </div>
      </div>


    <div class="row m-3">
        <div class="col-md-12 text-center">
            <button id="btn-back" type="button" class="btn btn-primary" onClick="back()">Cancel</button>
            <button type="submit" class="btn btn-danger">Delete</button>
        </div>
    </div>
    </form:form>
</c:if>
<c:if test = "${message !=null}">
    <div class="row m-3">
        <div class="col-md-12 text-center">
            <button id="btn-back1" class="btn btn-primary" onClick="back()">Back</button>
        </div>
    </div>
</c:if>
</div>
      <jsp:include page="footer.jsp"/>

