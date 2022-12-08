<%--
  Created by IntelliJ IDEA.
  User: pipes
  Date: 07/12/2022
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navbar.jsp"/>

<script type="text/javascript">
  function back () {
    location.href = "${pageContext.request.contextPath}/checking";
  }
</script>

<div class="container">
  <div class="row text-center mt-2">
    <h2>Check In process</h2>
  </div>
  <div class="card">
    <div class="card-body">
      <form method="post" action="${pageContext.request.contextPath}/checking-add" modelAttribute="checking">

        <div class="form-group row">
          <label  class="col-sm-2 col-form-label">Booking Reference</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" name="bookingNumber"
                   placeholder="Booking Reference">
          </div>
        </div>

        <div class="col-md-12 text-center">
          <button id="btn-back" class="btn btn-secondary" type="button" onclick="back()">Back</button>
          <button type="submit" class="btn btn-primary" >Save</button>
        </div>

        <h5>Check In Tips</h5>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">
            <b>Booking Reference:</b> use your ID to get access to booking
          </li>
          <li class="list-group-item">
            <b>Introduce data:</b> make sure your data is right to avoid extra fees.
          </li>
        </ul>
      </form>
    </div>
  </div>
</div>
</div>
<jsp:include page="footer.jsp"/>