<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/hotel";
        }
        function edit () {
            location.href = "${pageContext.request.contextPath}/edit-hotel/${hotel.id}";
        }
    </script>
      <div class="row text-center">
        <h3 class="mt-3"> Hotel Details</h3>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="id">Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input type="text" class="form-control" value="${hotel.id}" disabled  />
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
                          <input type="text" class="form-control" value="${hotel.email}" disabled  />
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
                          <input type="text" class="form-control" value="${hotel.name}" disabled  />
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
                          <input type="text" class="form-control" value="${hotel.address}" disabled  />
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
                          <input type="text" class="form-control" value="${hotel.phone}" disabled  />
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
                          <input type="text" class="form-control" value="${hotel.category}" disabled  />
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
                        <label path="petFriendly">Pet Friendly</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" class="form-control" value="${hotel.petFriendly ? "Yes" : "No"}" disabled  />
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="col-md-6 text-center">
            <fieldset class="form-group">
                <div class="row">
                    <div class="col-lg-4">
                        <label path="hasEventHall">Has Event Hall</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" class="form-control" value="${hotel.hasEventHall ? "Yes" : "No"}" disabled  />
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
                        <label path="hasPool">Has Pool</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" class="form-control" value="${hotel.hasPool ? "Yes" : "No"}" disabled  />
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="col-md-6 text-center">
            <fieldset class="form-group">
                <div class="row">
                    <div class="col-lg-4">
                        <label path="hasGym">Has Gym</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" class="form-control" value="${hotel.hasGym ? "Yes" : "No"}" disabled  />
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

