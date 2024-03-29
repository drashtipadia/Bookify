<%@ include file="Header.jsp" %>
<%@ page import="java.sql.*" %>
<%
  Statement stwish=con.createStatement();
ResultSet rswish;
int pid,wid;

%>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Wishlist</title>

</head>
<body>
<section id="page-name">
        <div class="container">
            <div class="row g-3">
                <div class="col mt-5 text-center">
                    <h1>My Wishlist </h1>
                    <div class="line"></div>
                </div>
            </div>
        </div>
    </section>
    <% 
    String user=session.getAttribute("id").toString();
    try
    {

    	rswish=stwish.executeQuery("SELECT * FROM wishlist INNER JOIN product ON wishlist.pro_id=product.pro_id WHERE uid='"+user+"'");
    	    		%>
     <section>
        <div class="container p-5">
            <div class="row g-3 ">
            <%
            while(rswish.next())
        	{
            	pid=rswish.getInt("pro_id");
            	wid=rswish.getInt("wish_id");
            	%>
            	 <div class="col-sm-6 col-md-4 col-lg-4 col-xl-3">
            	 <div class="card w-100 h-100">
                    <a href="productdetail.jsp?proid=<%= pid %>" class="text-decoration-none text-dark">
                        
                            <img src="./images/<% out.print(rswish.getString("image")); %>" class="card-img-top" height="150px">
                            <div class="card-body">
                                <h5 class="card-title"><% out.print(rswish.getString("pro_name")); %></h5>
                                <p class="card-text overtext"><% out.print(rswish.getString("pro_details")); %></p>
                                
                                
                               <div> <a href="wishlisttocart.jsp?pid=<%= pid %>&wid=<%= wid %>" class="btn allbtn ">Move to Cart</a>   </div>	
                            </div>
                        
                    </a>
                  </div>
                </div>
                <%
    	}
    	
    }catch(Exception e)
    {
    	System.out.print(e);
    }
    %>
            </div>
        </div>
      </section>
</body>

<%@ include file="Footer.jsp" %>