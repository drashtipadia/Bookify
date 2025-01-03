<%@ include file="Header.jsp"%>
<%!int cartid; %>
<%
Statement stcart=con.createStatement();
ResultSet rscart;
int subtotal=0;
int pid;
double finaltotal=0;
try{
  PreparedStatement ps=con.prepareStatement("SELECT * FROM cart INNER JOIN product ON cart.pro_id=product.pro_id WHERE uid=? ");
  ps.setString(1, session.getAttribute("id").toString());
  rscart=ps.executeQuery();
 %>
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cart</title>

</head>

<body>
  <section class="h-100 gradient-custom">
    <div class="container py-5">
      <div class="row d-flex justify-content-center my-4">
        <div class="col-md-8">
          <div class="card mb-4">
            <div class="card-header py-3">
              <h5 class="mb-0">Cart </h5>
            </div>

            <%        

                            while(rscart.next())
                            {
                              cartid=rscart.getInt("cart_id");
                              pid=rscart.getInt("pro_id");
                      %>


            <div class="card-body">
              <!-- Single item -->
              <div class="row">
                <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                  <!-- Image -->
                  <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                    <img src="./images/<% out.print(rscart.getString("image")); %>" class="w-100"
                      alt="<% out.print(rscart.getString("image")); %>" />
                  </div>
                  <!-- Image -->
                </div>

                <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">

                  <p><strong><% out.print(rscart.getString("pro_name")); %></strong></p>
                  <p>Author : <% out.print(rscart.getString("author")); %></p>
                  <p>Publisher : <% out.print(rscart.getString("publisher")); %></p>
                  <a href="deletecart.jsp?id=<%= cartid %>" type="button" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                    title="Remove item"> <i class="fas fa-trash"></i> </a>
                  <a href="db_wishlist.jsp?pid=<%= pid %>" type="button" class="btn btn-danger btn-sm mb-2" data-mdb-toggle="tooltip"
                    title="Move to the wish list"><i class="fas fa-heart"></i> </a>
                </div>

                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                  <!-- Quantity -->
                  <!--   <div class="d-flex mb-4" style="max-width: 300px">
                          <button class="btn btn-primary px-3 me-2"
                            onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                            <i class="fas fa-minus"></i>
                          </button>

                          <div class="form-outline">
                            <input id="form1" min="0" name="quantity" value="1" type="number" class="form-control" />
                            <label class="form-label" for="form1">Quantity</label>
                          </div>

                          <button class="btn btn-primary px-3 ms-2"
                            onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                            <i class="fas fa-plus"></i>
                          </button>
                        </div>  -->
                  <script src="./javascript/cart.js"></script>
                  <p class="text-start text-md-center">
                    <strong>Quantity:
                      <select id="qty<%= cartid %>" name="qty" onchange="changeQty(<%= cartid %>);">
                        <% for( int i=1;i <= rscart.getInt("pro_quantity");i++) 
                                                  { 
                                                    if(i==rscart.getInt("quantity")){
                                                  %>
                        <option value="<%out.print(i); %>" selected><% out.print(i); %></option>
                        <% } else { %>
                        <option value="<%out.print(i); %>"><%out.print(i); %></option>
                        <% }
                                                  } 
                                                %>
                      </select>
                    </strong>
                  </p>
                  <!-- Quantity -->
                  <!-- Price -->
                  <p class="text-start text-md-center">
                    <strong>Price: <% out.print(rscart.getString("pro_price")); %></strong>
                  </p>
                  <!-- Price -->
                </div>
              </div>
              <!-- Single item -->
              <hr class="my-4" />
              <% subtotal=subtotal +(rscart.getInt("pro_price")*rscart.getInt("quantity"));%>
              <% }// } %>
            </div>
          </div>
        </div>
      

    <% %>
    </div>
    <div class="row d-flex justify-content-center my-4"> 
      <div class="col-md-4">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">Summary</h5>
          </div>
          <div class="card-body ">
            <ul class="list-group list-group-flush">
              <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                SubTotal:
                <span><%out.println(subtotal); %></span>

              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                GST(5.5%):
                <span><%  out.print(subtotal*5.5/100); %></span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                <div>
                  <strong>Total amount</strong>
                </div>
                <% finaltotal=subtotal + (subtotal * 5.5 / 100); %>
                <span><strong><% out.print(finaltotal); %></strong></span>
              </li>
            </ul>

            <a href="order.jsp?tot=<%= finaltotal %>" type="button" class="btn btn-primary btn-lg  w-100 ">
              Place Order
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <% %>
  </section>
</body>
<%	  
 // }else
//  {
	//  out.print("No record Found");
 // }
}catch(Exception e)
{
	System.out.print(e);
}

%>
<%@ include file="Footer.jsp"%>