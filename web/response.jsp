<%@include file="/header.jsp" %>
<div class="container">
    <div class="col-md-10 col-md-offset-1">
        <!--If the insertion was successful, show a success message-->
        <c:if test="${flag eq true}">
            <div class="row">
                <div class="jumbotron col-md-10 col-md-offset-1" style="background-color: transparent">
                    <div align="center" class="row">
                        <h1 style="color: blue">Success!</h1>
                        <p>One of our employees will contact you as soon as possible.</p>
                        <p>Thank you for sending us your trip!</p>
                    </div>
                </div>
            </div>
        </c:if>
        <!--If the insertion failed, show a fail message-->
        <c:if test="${flag eq false}">
            <div class="row">
                <div class="jumbotron col-md-10 col-md-offset-1" style="background-color: transparent">
                    <div align="center" class="row">
                        <h1 style="color: red">Fail</h1>
                        <p>Sorry, something went wrong.</p>
                        <p>Please, try again.</p>
                    </div>
                </div>
            </div>
        </c:if>
    </div>
</div>
<%@include file="/footer.jsp" %>