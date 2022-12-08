<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="navbar.jsp"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/booking";
        }
                $(function () {
                       $(".datepicker").datepicker({
                        dateFormat: 'yy-mm-dd'
                });
        });
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

        <form:form method="post" action="${pageContext.request.contextPath}/new-booking" modelAttribute="booking">
            <div class="row text-center">
                <h3 class="mt-3">New Booking</h3>
            </div>
            <div class="row m-3">

                <div class="col-md-6 text-center">
                    <fieldset class="form-group">
                        <div class="row">
                            <div class="col-lg-4">
                                <label path="HotelId">Hotel Id</label>
                            </div>
                            <div class="col-lg-6">
                                <input name="HotelId" id="HotelId" path="HotelId" type="text" class="form-control"   />
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
                                            <input name="roomId" id="roomId" path="roomId" type="text" class="form-control"   />
                                        </div>
                                    </div>
                                </fieldset>
                            </div>

                            <div class="col-md-6 text-center">
                                <fieldset class="form-group">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <label path="clientId">Client Id</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <input name="clientId" id="clientId" path="clientId" type="text" class="form-control"   />
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
                                                        <label for="datepicker" path="startDate">Start Date</label>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" name="startDate" id="startDate" class="form-control datepicker">
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>

                                        <div class="col-md-6 text-center">
                                            <fieldset class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <label for="datepicker" path="endDate">End Date</label>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" name="endDate" id="endDate" class="form-control datepicker">
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
<jsp:include page="footer.jsp"/>