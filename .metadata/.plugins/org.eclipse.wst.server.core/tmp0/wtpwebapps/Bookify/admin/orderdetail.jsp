<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%
Statement st=con.createStatement();
ResultSet rs; %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>User Order</title>
</head>

<body>
	<section class="py-5">
		<div class="container bg-light py-5">

			<div class="row py-3">
				<div class="col text-center">
					<h3>Full Details</h3>
					<span class="line"></span>
				</div>
			</div>
			<% 
             String fetchid=request.getParameter("id");
             rs=st.executeQuery("SELECT * FROM ordertbl INNER JOIN product ON ordertbl.pro_id=product.pro_id INNER JOIN bill ON ordertbl.bill_id=bill.bill_id INNER JOIN user ON bill.uid=user.uid WHERE order_id='"+fetchid+"'");
          while(rs.next())
          {
        	  int orderid=rs.getInt("order_id");
        %>

			<div class="row m-5 ">
				<div class="col justify-content-around">
					<div class="card ms-auto w-100 h-100 ">

						<div class="card-header">
							<div class="row">
								<div class="col-10">
									<h5><%out.print(rs.getString("name")); %></h5>
								</div>
								<div class="col-2 text-end">
									<a href="./deleteAdminorder.jsp?id=<%= orderid %>"><i
											class="fa-solid fa-trash"></i></a>
								</div>
							</div>
						</div>

						<div class="card-body">
							<div class="row">
								
								<div class="col-5">

									<img src="../images/<% out.print(rs.getString("image")); %>" height="300px"
										width="100%" class="" alt="...">

								</div>
								<div class="col-7">
									<div>
										<h6>Bill id: <%out.print(rs.getString("bill_id")); %></h6>
									</div>
									<div>
										<h6>Product Name : <%out.print(rs.getString("pro_name")); %></h6>
									</div>
									<div>
										<h6>Product Price : <%out.print(rs.getString("pro_price")); %></h6>
									</div>
									<div>
										<h6>Order Quantity : <% out.print(rs.getString("orderQty")); %></h6>
									</div>
									<div>
										<h6>Total Amount : <%out.print(rs.getString("total_amount")); %></h6>
									</div>
									<div>
										<h6>Payment Type : <%out.print(rs.getString("payment_type")); %></h6>
									</div>
									<% if(rs.getString("payment_type").equals("card")) { %>
									<div>
										<h6>Card Holder Name : <%out.print(rs.getString("cardname")); %></h6>
									</div>
									<div>
										<h6>Card Number : <%out.print(rs.getString("cardnumber")); %></h6>
									</div>
									<div>
										<h6>CVV : <%out.print(rs.getString("cvv")); %></h6>
									</div>
									<div>
										<h6>Card Expiry : <%out.print(rs.getString("card_expiry")); %></h6>
									</div>
									<%} %>
									<div>
										<h6>Address 1 : <%out.print(rs.getString("address1")); %></h6>
									</div>
									<div>
										<h6>Address 2 : <%out.print(rs.getString("address2")); %> </h6>
									</div>
									<div>
										<h6>City : <%out.print(rs.getString("city")); %> </h6>
									</div>
									<div>
										<h6>State : <%out.print(rs.getString("state")); %> </h6>
									</div>
									<div>
										<h6>Phone : <%out.print(rs.getString("phone")); %> </h6>
									</div>
									<div>
										<h6>Email : <%out.print(rs.getString("email")); %> </h6>
									</div>
									<div>
										<h6>Bill Date : <%out.print(rs.getString("bill_date")); %> </h6>
									</div>
								</div>
								
							</div>


						</div>

						<div class="card-footer">

							<% if (rs.getString("status").equals("Ordered")) { %>
							<a class="btn btn-dark" href="./updateAdminorder.jsp?id=<%= orderid %>">
								<% out.print(rs.getString("status")); %> </a>

							<% } else {  %>

							<h5><% out.print(rs.getString("status")); %></h5>

							<% } %>

						</div>

					</div>
				</div>
				<%} %>
			</div>
	</section>
</body>

</html>
<%@ include file="footer.jsp"  %>