<%@ include file="Header.jsp" %>
<%
    String id=request.getParameter("proid");
    Statement stmt=con.createStatement();
    ResultSet rsp;
    int pid;
%>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book Details</title>

</head>
<body>
<section class="py-5">
    <div class="container">
        <%try{
    
            rsp=st.executeQuery("SELECT * FROM product INNER JOIN category ON product.cat_id=category.cat_id WHERE pro_id='"+id+"'");
            while(rsp.next())
            {
            	pid=rsp.getInt("pro_id");
           %>
        <div class="row">
            <div class="col-lg-6 p-5"><img src="./images/<%out.print(rsp.getString("image")); %>" class="card-img-top" height="500px" width="150px"></div>
            <div class="col-lg-6  p-5">
                <h3><%out.print(rsp.getString("pro_name")); %></h3>
                <p><%out.print(rsp.getString("cat_name")); %></p>
                <p><b>Author:</b> <%out.print(rsp.getString("author")); %></p>
                <p><b>Publisher:</b> <%out.print(rsp.getString("publisher")); %></p>
                <p><b>Details:</b> <% out.print(rsp.getString("pro_details")); %></p>
                 <p><b>Price:</b><%out.print(rsp.getString("pro_price")); %></p>
                  <% if(session.getAttribute("name")!=null){ %>
                  <a href="db_wishlist.jsp?pid=<%= pid %>"class="btn btn-dark m-3  w-75">Wishlist</a>
                 <a href="db_cart.jsp?pid=<%= pid %>" class="btn btn-dark m-3 w-75">Move To Cart</a>
                  <%}else
                                	{%>
                                	   <a class="btn btn-dark m-3 w-75" type="button" data-bs-toggle="modal" data-bs-target="#loginModal">Wishlist </a>
                                	   <a class="btn btn-dark m-3 w-75" type="button" data-bs-toggle="modal" data-bs-target="#loginModal">Move To Cart </a>
                                   <%	}%>
            </div>
        </div>

    </div>
        <% }
         }
      catch(Exception e)
      {
        
      }
      
    %>                  
</section>
</body>
<%@ include file="Footer.jsp" %>