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
            <c:when test="${updated==true}">
                <div class="alert alert-success" role="alert">
                    ${message}
                </div>
            </c:when>
            <c:when test="${updated==false}">
                <div class="alert alert-danger" role="alert">
                    ${message}
                </div>
            </c:when>
        </c:choose>
    </div>

    <form:form method="post" action="${pageContext.request.contextPath}/edit-room" modelAttribute="room">
        <div class="row text-center">
            <h3 class="mt-3">Edit Room</h3>
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
                    </div>
         </div>
        <div class="row m-3">
            <div class="col-md-6 text-center">
                            <fieldset class="form-group">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <label path="image">Image</label>
                                    </div>
                                    <div class="col-lg-6">
                                        <input name="image" id="image" path="image" type="file" class="form-control" value="${room.image}"   />
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
                            <input name="category" id="category" path="category" type="category" class="form-control" value="${room.category}"   />
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
                            <input name="hotel" id="hotel" path="hotel" type="text" class="form-control" value="${room.hotel}"   />
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
                            <input id="pricerange" name="pricerange" path="pricerange" type="text" class="form-control" value="${room.pricerange}"   />
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
        <div class="row m-3">
            <div class="col-md-12 text-center">
                <button id="btn-back" class="btn btn-secondary" type="button" onclick="back()">Back</button>
                <button type="submit" class="btn btn-primary" >Edit</button>
            </div>
        </div>
    </form:form>

</div>
      <jsp:include page="footer.jsp"/>

