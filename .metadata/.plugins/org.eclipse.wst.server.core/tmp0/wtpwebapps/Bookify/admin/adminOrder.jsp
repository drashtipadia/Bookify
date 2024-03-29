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
    <section class="mt-4 ">
        <div class="container d-flex justify-content-center ">
            <h1 class="m-auto">Order</h1>
        </div>
    </section>
    <div class="container mt-5 pt-5 bg-light">
        <div class="row p-2">
            <% rs=st.executeQuery("SELECT * FROM ordertbl INNER JOIN product ON ordertbl.pro_id=product.pro_id INNER JOIN bill ON ordertbl.bill_id=bill.bill_id INNER JOIN user ON bill.uid=user.uid");
          while(rs.next())
          {
        	  int orderid=rs.getInt("order_id");
        %>
            <div class="col-4 p-3">
                <div class="card mb-3 w-100 h-100">
                    <div class="card-header">
                        <div class="row">
                            <h3 class="col-8"><%out.print(rs.getString("name")); %> </h3>
                            <a href="./deleteAdminorder.jsp?id=<%= orderid %>"
                                class="mt-2 d-flex justify-content-end col-4"><i class="fa-solid fa-trash-can "></i></a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="p-0 m-0">
                            <img src="../images/<% out.print(rs.getString("image")); %>" height="150px" width="100%"
                                alt="<% out.print(rs.getString("image")); %>">
                        </div>
                        <hr />
                        <p class="card-text">
                        <div>
                            <p>Bill Id : <% out.print(rs.getString("bill_id")); %> </p>
                        </div>
                        <div>
                            <p>Product Name : <% out.print(rs.getString("pro_name")); %> </p>
                        </div>
                        <div>
                            <p>Total Amount : <% out.print(rs.getString("total_amount")); %></p>
                        </div>
                        <div>
                            <p>Quantity : <% out.print(rs.getString("orderQty")); %></p>
                        </div>
                        <div>
                            <p>Payment Method : <% out.print(rs.getString("payment_type")); %></p>
                        </div>

                    </div>
                    <div class="card-footer bg-transparent border-dark">
                        <div class="btn-group">
                            <% if (rs.getString("status").equals("Ordered")) { %>
                            <a class="btn btn-dark" href="./updateAdminorder.jsp?id=<%= orderid %>">
                                <% out.print(rs.getString("status")); %> </a>

                            <% } else {  %>
                            <label class="btn btn-dark">
                                <% out.print(rs.getString("status")); %>
                            </label>
                            <% } %>
                        </div>
                        <div class="btn-group">
                            <a class="btn btn-dark" href="./orderdetail.jsp?id=<%= orderid %>">Details</a>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>

</html>
<%@ include file="footer.jsp"  %>