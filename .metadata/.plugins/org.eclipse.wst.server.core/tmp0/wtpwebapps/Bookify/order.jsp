<%@ include file="Header.jsp" %>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Place Order</title>

</head>

<body>
    <div class=""></div><!--  -->
    <section class="py-5"><!--  -->
        <div class="container booking p-5">

            <div class="row md-py-3"><!--  -->
                <div class="col text-center">
                    <h3 class="text-white">Order Information </h3>
                    <span class="line bg-white"></span>
                </div>
            </div>
            <div class="card  m-5">
                <div class="row m-5 justify-content-center align-items-center">
                    <div class="col m-0 p-0">
                        <h3 class="text-center m-3">Your Total Billing Amount is:
                            <% out.print(request.getParameter("tot")); %></h3>
                        <hr />


                        <form method="post" action="db_insertoder.jsp" id="orderform">
                            <div class="row justify-content-center align-items-center ">
                                <input type="hidden" name="totAmount"
                                    value="<% out.print(request.getParameter("tot")); %>">

                                <div class="col-8 ">

                                    <h3 class="text-center mb-3">Enter your Address Detail</h3>
                                    <div class="mb-3">
                                        <label class="form-label" for="address1">Address Line 1</label>
                                        <textarea class="form-control-lg w-100" name="address1" id="address1" rows="2"
                                            placeholder="Address Line 1"></textarea>
                                        <label for="address1msg" id="address1msg"
                                            class="d-none errmsg form-label">Address 1 Is
                                            Required</label><br />
                                    </div>
                                    <div class="mb-2">
                                        <label class="form-label" for="address2">Address Line 2</label>
                                        <textarea class="form-control-lg w-100" name="address2" id="address2" rows="2"
                                            placeholder="Address Line 2"></textarea>
                                        <label for="address2msg" id="address2msg"
                                            class="d-none errmsg form-label">Address 2 Is
                                            Required</label><br />
                                    </div>

                                    <label class="form-label" for="city">City</label>
                                    <input type="text" id="city" name="city" placeholder="City"
                                        class="form-control w-100">
                                    <label for="citymsg" id="citymsg" class="d-none errmsg form-label">City Is
                                        Required</label><br />

                                    <label class="form-label" for="state">State</label>
                                    <input type="text" id="state" name="state" placeholder="State"
                                        class="form-control w-100">
                                    <label for="statemsg" id="statemsg" class="d-none errmsg form-label">State Is
                                        Required</label><br />

                                    <label class="form-label" for="phone">Phone</label>
                                    <input type="text" id="phone" name="phone" placeholder="Phone"
                                        class="form-control w-100 ">
                                    <label for="phonemsg" id="phonemsg" class="d-none errmsg form-label">Phone
                                        Is
                                        Required</label><br />
                                    <hr>


                                    <h2 class="text-center mb-2">Select Payment Method</h2>
                                    <div class="col-12 justify-content-center align-items-center d-flex">
                                        <div class="btn-group" role="group">
                                            <div class=" form-check mb-5 pt-3 mt-3">                                               
                                                <input type="radio" class="btn-check" name="paymentType" id="btnradio1"
                                                    value="COD" autocomplete="off" onclick="paymentShowCOD();" checked>
                                                <label class="btn btn-outline-primary" for="btnradio1">Cash On
                                                    Delivery</label>
                                            </div>
                                            <div class=" form-check mb-5 pt-3 mt-3">
                                                <input type="radio" class="btn-check" name="paymentType" id="btnradio2"
                                                    value="card" onclick="paymentShow();" autocomplete="off">
                                                <label class="btn btn-outline-primary" for="btnradio2">Card</label>

                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div id="cardDetail" class="d-none">
                                        <h3 class="text-center mb-5">Enter Your Card Details</h3>

                                        <label class="form-label" for="cname">Card Holder Name</label>
                                        <input type="text" id="cname" name="cname" class="form-control w-100"
                                            placeholder="Card Holder Name">
                                        <label for="cnamemsg" id="cnamemsg" class="d-none errmsg form-label">Card
                                            Holder Name Is Required</label><br />

                                        <label class="form-label" for="Cnumber">Card Number</label>
                                        <input type="text" id="Cnumber" name="Cnumber" class="form-control w-100"
                                            maxlength="16" placeholder="1234 5678 1234 5678">
                                        <label for="Cnumbermsg" id="Cnumbermsg" class="d-none errmsg form-label">Card
                                            Number Is Required</label><br />

                                        <label class="form-label" for="cvv">CVV</label>
                                        <input type="password" id="cvv" name="cvv" class="form-control w-100" maxlength="3"
                                            placeholder="***">
                                        <label for="cvvmsg" id="cvvmsg" class="d-none errmsg form-label">CVV Is
                                            Required</label><br />

                                        <label class="form-label" for="cexpiry">Card Expiry</label>
                                        <input type="date" id="cexpiry" name="cexpiry" placeholder="Card Expiry"
                                            class="form-control w-100 mb-2" min="<%= java.time.LocalDate.now() %>" max="">
                                            
                                        <label for="cexpirymsg" id="cexpirymsg" class="d-none errmsg form-label">Card
                                            Expiry Is
                                            Required</label><br />
                                    </div>
                                    <input type="submit" value="Place Order"
                                        class="btn btn-lg btn-dark form-control-lg w-100 mb-5">
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="./javascript/order.js"></script>
</body>

<%@ include file="Footer.jsp" %>