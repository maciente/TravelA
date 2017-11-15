<%@include file="/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-7 col-md-offset-0">        
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Create your next travel:</h3>
                </div>
                <div class="panel-body">
                    <!--Post method to the servlet request-->
                    <!--All forms were validated, avoiding XSS attacks-->
                    <form class="form-horizontal" method="POST" action="/TravelA/InsertTravel">
                        <div class="form-group">
                            <label class="col-md-4 control-label">Name:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="name" required="required" pattern="[a-zA-Záéíóúâêôãõ\s]+$">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Phone:</label>
                            <div class="col-md-7">
                                <input type="text" placeholder="(XX)XXXXX-XXXX" class="form-control" name="phone" required="required" pattern="\([0-9]{2}\)[0-9]{4,5}-[0-9]{4}$">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Origin:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="origin" required="required" pattern="[a-zA-Záéíóúâêôãõ\s]+$">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Destination:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="destination" required="required" pattern="[a-zA-Záéíóúâêôãõ\s]+$">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Date From:</label>
                            <div class="col-md-7">
                                <input type="date" class="form-control" name="dateFrom" required="required" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Date To:</label>
                            <div class="col-md-7">
                                <input type="date" class="form-control" name="dateTo" required="required" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Number of Travelers:</label>
                            <div class="col-md-7">
                                <input type="number" class="form-control" name="people" required="required" min="1" pattern="[0-9]+$">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 col-md-offset-5">
                                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> Create</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-md-offset-1">
            <div align="center" class="row">
                <h3 style="color: #1b6d85"><strong>About Travel A:</strong></h3>
                <p><b>Travel A</b> is a brazilian company dedicated to present the best deals to travelers.</p>
                <p>If you are a tourist looking for a quality time. We're here to provide you the best offers.</p>
                <p>You just have to create a travel itinerary and you will be contacted with the best deals on the market.</p>
                <p><b>Try it!</b></p>
            </div>
        </div>
    </div>
</div>
<%@include file="/footer.jsp" %>
