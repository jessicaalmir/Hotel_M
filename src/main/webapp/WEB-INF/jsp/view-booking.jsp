<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/booking";
        }
        function edit () {
            location.href = "${pageContext.request.contextPath}/edit-booking/${booking.bookingId}";
        }
    </script>
      <div class="row text-center">
        <h3 class="mt-3"> Booking Details</h3>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="bookingId">Booking Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${booking.bookingId}" disabled  />
                      </div>
                  </div>
              </fieldset>
          </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="hotelId">Hotel ID</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${booking.hotelId}" disabled  />
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
                          <label path="hotelName">Hotel Name</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${hotelName}" disabled  />
                      </div>
                  </div>
              </fieldset>
           </div>

           <div class="col-md-6 text-center">
                         <fieldset class="form-group">
                             <div class="row">
                                 <div class="col-lg-4">
                                     <label path="hotelAddress">Hotel Address</label>
                                 </div>
                                 <div class="col-lg-6">
                                     <input type="text" class="form-control" value="${hotelAddress}" disabled  />
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
                                          <label path="roomId">Room ID</label>
                                      </div>
                                      <div class="col-lg-6">
                                          <input type="text" class="form-control" value="${booking.roomId}" disabled  />
                                      </div>
                                  </div>
                              </fieldset>
                          </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="clientId">Client ID</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${booking.clientId}" disabled  />
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
                        <label path="endDate">End Date</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" class="form-control" value="${booking.endDate}" disabled  />
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="col-md-6 text-center">
                      <fieldset class="form-group">
                          <div class="row">
                              <div class="col-lg-4">
                                  <label path="startDate">Start date</label>
                              </div>
                              <div class="col-lg-6">
                                  <input type="text" class="form-control" value="${booking.startDate}" disabled  />
                              </div>
                          </div>
                      </fieldset>
                  </div>
      </div>

    <div class="row m-3">
        <div class="col-md-12 text-center">
            <button id="btn-back" class="btn btn-secondary" onClick="back()">Back</button>
            <button class="btn btn-primary" onClick="edit()">Edit</button>
        </div>
    </div>

</div>
      <jsp:include page="footer.jsp"/>

