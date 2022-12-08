<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="navbar.jsp"/>

<div class="container">
    <div class="row text-center mt-2">
    <h2>Check In</h2>
    </div>
    <div class="card">
        <div class="card-body">
            <form>

                <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Booking Reference</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="bookingNumber"
                               placeholder="Booking Reference">
                    </div>
                </div>
            </form>
            <a href="/checking-add">
                <button type="submit" class="btn btn-primary my-3">Check In</button>
            </a>

            <h5>Check In Tips</h5>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">
                    <b>Booking Reference:</b> use your ID to get access to booking
                </li>
                <li class="list-group-item">
                    <b>Introduce data:</b> make sure your data is right to avoid extra fees.
                </li>
            </ul>
        </div>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"/>
