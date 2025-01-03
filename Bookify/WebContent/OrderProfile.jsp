<%@ include file="Header.jsp" %>
<%@ page import="java.sql.*" %>
<%
    
    Statement stuser=con.createStatement();
    ResultSet rsuser;

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
</head>
<body>
 <section id="page-name">

        <div class="container h-200">
            <div class="row">
                <div class="col mt-5 text-center">
                    <h1>View Order</h1>
                    <span class="line"></span>
                </div>
                
            </div>
        </div>
    </section>
    <section class="mx-5 px-5">
    <div class="row m-5 ">
                <!-- <div class="col"> -->
                <div class="card p-3">
                 <% rsuser=stuser.executeQuery("SELECT * FROM ordertbl INNER JOIN product ON ordertbl.pro_id=product.pro_id INNER JOIN bill ON ordertbl.bill_id=bill.bill_id INNER JOIN user ON bill.uid=user.uid where bill.uid='"+session.getAttribute("id")+"'");
          while(rsuser.next())
          {
        	  int orderid=rsuser.getInt("order_id");
        %>
                        <div class="card-header mt-3">
                            <h3><% out.print(rsuser.getString("pro_name")); %></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-6 col-md-12  mt-3">
                                    <h4 class="text-center py-2 bg-light">Product Details</h4>
                                    <div class="row p-1">
                                        <div class="col-12">
                                           
                                            <div class="row">
                                               <h5>Author:  <% out.print(rsuser.getString("author")); %></h5>
                                            </div>
                                            <div class="row">
                                                <h5>Publisher: <% out.print(rsuser.getString("publisher")); %></h5>
                                            </div>
                                            <div class="row">
                                                <h5>Price: <% out.print(rsuser.getString("pro_price")); %></h5>
                                            </div>
                                             <% if(rsuser.getString("sale").equals("0")) { }else{ %>
                                             <div class="row">
                                                <h5>Sale: <% out.print(rsuser.getString("sale")); %></h5>
                                            </div>
                                            <%} %>
                                            <div class="row">
                                                <h5>Picture:  <img src="./images/<% out.print(rsuser.getString("image")); %>"
                                                        class="img-fluid" width="100" height="100" /></h5>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                                <!-- <div width="50px" height="50px">  </div>-->
                                
                                <div class="col-lg-6 col-md-12 mt-3">
                                    <h4 class="text-center py-2 bg-light">User Details</h4>
                                    <div class="row p-1">

                                            <div class="col-12">
                                               <div class="row">
                                                    <h5> Bill Id:<% out.print(rsuser.getString("bill_id")); %> </h5>
                                                </div>
                                                <div class="row">
                                                    <h5> User Name:<% out.print(rsuser.getString("name")); %> </h5>
                                                </div>
                                                <div class="row">
                                                    <h5>Address 1: <% out.print(rsuser.getString("address1")); %></h5>
                                                </div>
                                                <div class="row">
                                                    <h5>Address 2: <% out.print(rsuser.getString("address2")); %> </h5>
                                                </div>
                                                <div class="row">
                                                    <h5>City: <% out.print(rsuser.getString("city")); %></h5>
                                                </div>
                                                <div class="row">
                                                    <h5>State:  <% out.print(rsuser.getString("state")); %> </h5>
                                                </div>
                                                <div class="row">
                                                    <h5>Quantity:  <% out.print(rsuser.getString("orderQty")); %></h5>
                                                </div>
                                                <div class="row">
                                                    <h5>Payment Type: <% out.print(rsuser.getString("payment_type")); %></h5>
					                             </div>
					                             <% if(rsuser.getString("payment_type").equals("card")) { %>
														<div>
															<h5>Card Holder Name : <%out.print(rsuser.getString("cardname")); %></h5>
														</div>
														<div>
															<h5>Card Number : <%out.print(rsuser.getString("cardnumber")); %></h5>
														</div>
														<div>
															<h5>CVV : <%out.print(rsuser.getString("cvv")); %></h5>
														</div>
														<div>
															<h5>Card Expiry : <%out.print(rsuser.getString("card_expiry")); %></h5>
														</div>
														<%} %>
					                                <div class="row">
                                                    <h5>Total Amount:  <% out.print(rsuser.getString("total_amount")); %></h5>
                                                </div>


                                            </div>

                                        
                                        
                                    </div>

                                </div>
                                <!-- payment  end -->

                                <div class="card-footer">
                                <% if(rsuser.getString("status").equals("Cancel")) { %>
                                    <p class="errmsg">Sorry  Your order canceled...... </p>
                                	<button class="btn allbtn text-white btn-75"><% out.print(rsuser.getString("status")); %></button>
                                		
                               <% }else{ %>
                                
                                <button class="btn allbtn text-white btn-75"><% out.print(rsuser.getString("status")); %></button>
                                 <a href="./ordercancel.jsp?orderid=<%= orderid %>" class="btn allbtn  text-white btn-75"
                                                onclick="return confirm('Are you sure you want to delete this booking?');">Cancel</a>
                                                
                                                <% } %>
                                </div>
                            </div>
                        </div>
                        <hr/>
                    <%} %>
                </div>
            </div>
     
    
   </section> 
     
</body>

<%@ include file="Footer.jsp" %>