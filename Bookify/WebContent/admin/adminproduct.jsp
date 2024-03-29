<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%! int Id; %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
</head>

<body>

    <section id="FeedbacklistSection" class="mt-4">
        <div class="container d-flex justify-content-center">
            <h1 class="m-auto">Product</h1>
        </div>
    </section>
    <div class="d-flex justify-content-center align-items-center mt-5 mb-5">
        <a class="btn btn-dark w-25" href="adminaddproduct.jsp">Add Book</a>
    </div>


     <section>
    <div class="container p-5 bg-light">
      <div class="row p-3">
       <%
       
       try{
           Statement st=con.createStatement();
           ResultSet rs,rsc;
           rs=st.executeQuery("SELECT * FROM product INNER JOIN category ON product.cat_id=category.cat_id");
           while(rs.next())
           {
               Id=rs.getInt("pro_id");

       
       
       %>
       
          <div class="col-6 p-2">
            <div class="card w-100 h-100">
              <div class="card-header">

                <h5>
                  Product Id: <% out.print(rs.getString("pro_id")); %>
                </h5>
              </div>
              <div class="row">
              <div class="col-md-4">
         <img src="../images/<%out.print(rs.getString("image")); %>" class="p-2" height="180px" alt="...">
          </div>
    <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <h6>Book Name: <%out.print(rs.getString("pro_name")); %></h6>
                <p class="card-text m-0 p-0">Price: <%out.print(rs.getString("pro_price")); %></p>
                <p class="card-text  m-0 p-0">Date : <% out.print(rs.getString("date")); %></p>
                 <p class="card-text  m-0 p-0">Category : <% out.print(rs.getString("cat_name")); %></p>
                <a href="./adminproductdetails.jsp?proid=<%= Id %>">Details</a>
              </div>
  </div>
  </div>
            </div>

          </div>
        
        
        <% }  }catch(Exception e){
            
        } %>
      </div>

    </div>
  </section>
     






























   
   
</body>

</html>
<%@ include file="footer.jsp" %>