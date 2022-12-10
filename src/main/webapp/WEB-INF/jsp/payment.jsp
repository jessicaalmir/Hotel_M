    <%--
      Created by IntelliJ IDEA.
      User: deibymontoya
      Date: 2022-12-07
      Time: 11:54 p.m.
      To change this template use File | Settings | File Templates.
    --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <jsp:include page="navbar.jsp"/>

    <div class="row text-center mt-5">
        <h3 class=""> Payments already done</h3>
    </div>
    <div class="row">
        <div class="col my-3 px-5">
            <a href="/new-payment">
                <button class="btn btn-primary" type="submit">Making a new payment</button>
            </a>
        </div>
    </div>
    <div class="row justify-content-md-center">
        <table class="table table-hover table-bordered" style="width:80%">
            <thead>
            <tr class="text-center">
                <th scope="col">Payment Id</th>
                <th scope="col">Hotel</th>
                <th scope="col">Total Cost</th>
                <th scope="col">Quantity People</th>
                <th scope="col">Last 4 Digits</th>
                <th scope="col">Status</th>
            </tr>
            </thead>
            <tbody>

        <c:forEach items="${payments}" var="payment">
            <tr class="align-items-center">
                <td>${payment.id}</td>
                <td>${payment.hotelBooked}</td>
                <td>$${payment.totalCost}</td>
                <td>${payment.quantityPeople}</td>
                <td>****${payment.lastFourDigits}</td>
                <td>${payment.status}</td>
            </tr>
        </c:forEach>
            </tbody>
        </table>
    </div>
    <jsp:include page="footer.jsp"/>
