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
            <c:when test="${created==true}">
                <div class="alert alert-success" role="alert">
                    ${message}
                </div>
            </c:when>
            <c:when test="${created==false}">
                <div class="alert alert-danger" role="alert">
                    ${message}
                </div>
            </c:when>
        </c:choose>
    </div>

    <form:form method="post" action="${pageContext.request.contextPath}/new-hotel" modelAttribute="hotel">
        <div class="row text-center">
            <h3 class="mt-3">New Hotel</h3>
        </div>
        <div class="row m-3">
            <div class="col-md-6 text-center">
            </div>
            <div class="col-md-6 text-center">
                <fieldset class="form-group">
                    <div class="row">
                        <div class="col-lg-4">
                            <label path="email">Email</label>
                        </div>
                        <div class="col-lg-6">
                            <input name="email" id="email" path="email" type="email" class="form-control"   />
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
                            <input name="name" id="name" path="name" type="text" class="form-control"   />
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
                            <input id="address" name="address" path="address" type="text" class="form-control"  />
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
                            <input name="phone" id="phone" path="phone" type="text" class="form-control"  />
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
                            <input name="category" id="category" path="category" type="number" class="form-control"  min="1" max="5" />
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
                            <form:select path="petFriendly" id="isPetFriendly" name="isPetFriendly" class="form-select">
                            <form:option value="">Select one</form:option>
                            <form:option value="1">Yes</form:option>
                            <form:option value="0">No</form:option>
                            </form:select>
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
                            <form:select path="hasEventHall" id="hasEventHall" name="hasEventHall" class="form-select">
                            <form:option value="">Select one</form:option>
                            <form:option value="1">Yes</form:option>
                            <form:option value="0">No</form:option>
                            </form:select>
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
                            <form:select path="hasPool" name="hasPool" id="hasPool" class="form-select">
                            <form:option value="">Select one</form:option>
                            <form:option value="1">Yes</form:option>
                            <form:option value="0">No</form:option>
                            </form:select>
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
                            <form:select path="hasGym" class="form-select" id="hasGym" name="hasGym">
                            <form:option value="">Select one</form:option>
                            <form:option value="1">Yes</form:option>
                            <form:option value="0">No</form:option>
                            </form:select>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
        <div class="row m-3">
            <div class="col-md-12 text-center">
                <button id="btn-back" class="btn btn-secondary" type="button" onclick="back()">Back</button>
                <button type="submit" class="btn btn-primary" >Save</button>
            </div>
        </div>
    </form:form>

</div>
      <jsp:include page="footer.jsp"/>

