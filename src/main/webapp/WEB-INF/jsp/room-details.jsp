<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/room";
        }
        function edit () {
            location.href = "${pageContext.request.contextPath}/edit-room/${room.id}";
        }
    </script>
      <div class="row text-center">
        <h3 class="mt-3"> Room Details </h3>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="id">Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${room.id}" disabled  />
                      </div>
                  </div>
              </fieldset>
          </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="category">Category</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${room.category}" disabled  />
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
                          <label path="hotel">Hotel</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${room.hotel}" disabled  />
                      </div>
                  </div>
              </fieldset>
           </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="pricerange">Price Range</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${room.pricerange}" disabled  />
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
     <div>
     <img src="${pageContext.request.contextPath}/resources/images/room/${room.image}" style="width:100%" alt="${room.category}"/>
     </div>


</div>
      <jsp:include page="footer.jsp"/>

