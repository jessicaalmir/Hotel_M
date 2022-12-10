<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/clients";
        }
        function edit () {
            location.href = "${pageContext.request.contextPath}/clients_edit/${clients.id}";
        }
    </script>
      <div class="row text-center">
        <h3 class="mt-3"> Client Details</h3>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="id">Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${clients.id}" disabled  />
                      </div>
                  </div>
              </fieldset>
          </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="id">Email</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${clients.email}" disabled  />
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
                          <label path="name">Name</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${clients.name}" disabled  />
                      </div>
                  </div>
              </fieldset>
           </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="address">Address</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${clients.address}" disabled  />
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
                          <label path="phone">Phone</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${clients.phone}" disabled  />
                      </div>
                  </div>
              </fieldset>
          </div>
    <div class="row m-3">
        <div class="col-md-12 text-center">
            <button id="btn-back" class="btn btn-secondary" onClick="back()">Back</button>
            <button class="btn btn-primary" onClick="edit()">Edit</button>
        </div>
    </div>

</div>
      <jsp:include page="footer.jsp"/>

