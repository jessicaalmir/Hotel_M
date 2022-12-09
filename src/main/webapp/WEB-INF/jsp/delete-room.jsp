<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/room";
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
    <form:form method="post" action="${pageContext.request.contextPath}/delete-room" modelAttribute="room">
      <div class="row text-center">
        <h3 class="mt-3">Delete Room</h3>
      </div>
      <div class="row m-3">
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="id">Id</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="id" id="id" path="id" type="text" class="form-control" value="${room.id}" readonly  />
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
                                    <input name="pricerange" id="pricerange" path="pricerange" type="text" class="form-control" value="${room.pricerange}" readonly  />
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
                          <label path="category">Category</label>
                      </div>
                      <div class="col-lg-6">
                          <input name="category" id="category" path="category" type="text" class="form-control" value="${room.category}" readonly  />
                      </div>
                  </div>
              </fieldset>
           </div>
          <div class="col-md-6 text-center">
              <fieldset class="form-group">
                  <div class="row">
                      <div class="col-lg-4">
                          <label path="hotel">Hotel</label>
                      </div>
                      <div class="col-lg-6">
                          <input id="hotel" name="hotel" path="hotel" type="text" class="form-control" value="${room.hotel}" readonly  />
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