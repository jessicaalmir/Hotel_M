<%--
  Created by IntelliJ IDEA.
  User: deibymontoya
  Date: 2022-12-07
  Time: 8:53 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="navbar.jsp"/>
<script type="text/javascript">
    function back () {
        location.href = "${pageContext.request.contextPath}/payment";
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

<form:form method="post" action="${pageContext.request.contextPath}/new-payment" modelAttribute="payment">
    <div class="row text-center">
        <h3 class="mt-3">Setting a new payment</h3>
    </div>
    <div class="row m-3">
        <div class="col-md-6 text-center">
            <fieldset class="form-group">
                <div class="row">
                    <div class="col-lg-4">
                        <label path="hotelBooked">Hotel booking reservation</label>
                    </div>
                    <div class="col-lg-6">
                        <select class="form-control" name="HotelBooked" path="HotelBooked" id="HotelBooked">
                            <option value="HotelBooked" path="HotelBooked">Select...</option>
                            <option value="Stellar" path="HotelBooked">Stellar</option>
                            <option value="Hilton Hotels" path="HotelBooked">Hilton Hotels</option>
                            <option value="Burj Khalifa" path="HotelBooked">Burj Khalifa</option>
                            <option value="Decameron" path="HotelBooked">Decameron</option>
                        </select>
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="col-md-6 text-center">
            <fieldset class="form-group">
                <div class="row">
                    <div class="col-lg-4">
                        <label path="TotalCost">Total Cost</label>
                    </div>
                    <div class="col-lg-6">
                        <input id="totalCost" name="totalCost" path="totalCost" type="number" class="form-control"  />
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
                        <label path="quantityPeople">Quantity people</label>
                    </div>
                    <div class="col-lg-6">
                        <input name="quantityPeople" id="quantityPeople" path="quantityPeople" type="number" class="form-control" />
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

    <hr>

    <div class="row m-3">
        <div class="col-md-5 text-center">
            <fieldset class="form-group">
                <div class="row">
                    <div class="col-lg-4">
                        <label>Credit card number</label>
                    </div>
                    <div class="col-lg-8">
                        <input name="lastFourDigits" maxlength="18" minlength="12" path="lastFourDigits" id="lastFourDigits" type="text" class="form-control"  />
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="col-md-3 text-center">
            <fieldset class="form-group">
                <div class="row">
                    <div class="col-lg-4">
                        <label path="QuantityPeople">Security code</label>
                    </div>
                    <div class="col-lg-6">
                        <input name="QuantityPeople" type="number" class="form-control" />
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="col-md-3 text-center">
            <fieldset class="form-group">
                <div class="row">
                    <div class="col-lg-4">
                        <label>Expiry date</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="date" class="form-control" />
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <br>

    <div class="row m-3">
        <div class="col-md-12 text-center">
            <button id="btn-back" class="btn btn-secondary" type="button" onclick="back()">Back</button>
            <button type="submit" class="btn btn-primary">Pay</button>
        </div>
    </div>
</form:form>

</div>
<jsp:include page="footer.jsp"/>


