<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%! int Id; %>
<%
Statement st=con.createStatement();
ResultSet rs,rsc;
%>


<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Product Detail</title>
</head>

<body>


 
        <div class="container bg-light py-3">

            <div class="row py-3">
                <div class="col text-center">
                    <h3>Full Details</h3>
                    <span class="line"></span>
                </div>
            </div>


            <%
                String proid=request.getParameter("proid");
                try{
                   
                    rs=st.executeQuery("SELECT * FROM product INNER JOIN category ON product.cat_id=category.cat_id WHERE pro_id='"+proid+"'");
                    while(rs.next())
                    {
                        Id=rs.getInt("pro_id");
  
                        %>

            <div class="row m-3 ">
                <div class="col justify-content-around">
                    <div class="card ms-auto ">

                        <div class="card-header">
                            <div class="row">
                                <div class="col-10">
                                    <h3>Product Id: <% out.print(rs.getString("pro_id")); %></h3>
                                </div>
                                <div class="col-2 text-end">
                                    <a href="deleteAdminproduct.jsp?id=<%= Id%>"><i class="fa-solid fa-trash"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="../images/<%out.print(rs.getString("image")); %>" class="rounded-start p-2" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Name: <%out.print(rs.getString("pro_name")); %></h5> <br/>
                                     <p class="card-text">Author: <%out.print(rs.getString("author")); %> </p>
                                     <p class="card-text">Publisher: <%out.print(rs.getString("publisher")); %> </p>  
                                    <p class="card-text">Details: <%out.print(rs.getString("pro_details")); %></p>
                                     <p class="card-text">Price: <%out.print(rs.getString("pro_price")); %> </p>
                                     <p class="card-text">Quantity: <%out.print(rs.getString("pro_quantity")); %> </p>
                                     <p class="card-text">Sale: <%out.print(rs.getString("sale")); %> </p>
                                     <p class="card-text">Category: <%out.print(rs.getString("cat_name")); %> </p>
                                   
                                </div>
                            </div>
                        </div>



                        <div class="card-footer">
                           <div class="mx-5 px-5 my-3">
                            <a class="btn btn-primary w-100   center" href="updateAdminproduct.jsp?id=<%= Id%>">Update</a>
                           </div>
                        </div>
                    </div>

                </div>
            </div>
            <?php } ?>

            <%  
            }
            }catch(Exception e){
            System.out.print(e);
        } %>


        </div>
   

</body>

</html>
<%@ include file="footer.jsp" %>