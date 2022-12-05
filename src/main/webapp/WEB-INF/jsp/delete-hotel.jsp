<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/hotel";
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
    <form:form method="post" action="${pageContext.request.contextPath}/delete-hotel" modelAttribute="hotel">
      <div class="row text-center">
        <h3 class="mt-3"> Hotel to Delete</h3>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="id">Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="id" id="id" path="id" type="text" class="form-control" value="${hotel.id}" readonly  />
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
                          <input name="email" id="email" path="email" type="text" class="form-control" value="${hotel.email}" readonly  />
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
                          <input name="name" id="name" path="name" type="text" class="form-control" value="${hotel.name}" readonly  />
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
                          <input id="address" name="address" path="address" type="text" class="form-control" value="${hotel.address}" readonly  />
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
                          <input name="phone" id="phone" path="phone" type="text" class="form-control" value="${hotel.phone}" readonly  />
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
                          <input name="category" id="category" path="category" type="text" class="form-control" value="${hotel.category}" readonly  />
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
                        <input path="petFriendly" id="isPetFriendly" name="isPetFriendly" type="text" class="form-control" value="${hotel.petFriendly ? "Yes" : "No"}" readonly  />
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
                        <input path="hasEventHall" id="hasEventHall" name="hasEventHall" type="text" class="form-control" value="${hotel.hasEventHall ? "Yes" : "No"}" readonly  />
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
                        <input path="hasPool" name="hasPool" id="hasPool" type="text" class="form-control" value="${hotel.hasPool ? "Yes" : "No"}" readonly  />
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
                        <input path="hasGym" class="form-select" id="hasGym" name="hasGym" type="text" class="form-control" value="${hotel.hasGym ? "Yes" : "No"}" readonly  />
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="row m-3">
        <div class="col-md-12 text-center">
            <button id="btn-back" class="btn btn-primary" onClick="back()">Cancel</button>
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

