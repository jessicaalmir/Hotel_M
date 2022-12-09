<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="navbar.jsp"/>
    <script type="text/javascript">
        function back () {
            location.href = "${pageContext.request.contextPath}/clients";
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
    <form:form method="post" action="${pageContext.request.contextPath}/clients_newAdd" modelAttribute="clients">
 <div class="row text-center">
            <h3 class="mt-3">New Client</h3>
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
            <div class="col-md-12 text-center">
                <button type="submit" class="btn btn-primary" >Save</button>
                <button id="btn-back" class="btn btn-secondary" type="button" onclick="back()">Cancel</button>
            </div>
        </div>
    </form:form>

</div>
      <jsp:include page="footer.jsp"/>

