<%@ include file="Header.jsp" %>
<%@ page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    Statement stmt=con.createStatement();
    ResultSet rsp;
    int pid;
%>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Books</title>

</head>

<body>
    <section id="page-name">
        <div class="container">
            <div class="row g-3">
                <div class="col mt-5 text-center">
                    <h1>
                  
                    <%
                       try{
                    	   if(id!= null){
                    	  PreparedStatement psp=con.prepareStatement("SELECT * FROM category WHERE cat_id=?");
                    	  psp.setString(1,id);
                    	  rsp=psp.executeQuery();
                    	   while(rsp.next())
                    	   {  out.print(rsp.getString("cat_name")); }   
                    	   }else if(request.getParameter("value").equals("lateset"))
                    	   {
                    		   out.print("New Arrival");
                    	   }else if(request.getParameter("value").equals("trend"))
                    	   {
                    		   out.print("Trending Book");
                    	   }else if(request.getParameter("value").equals("sale"))
                    	   {
                    		   out.print("Sale");
                    	   }else if(request.getParameter("value").equals("search"))
                    	   {
                    		   out.print(request.getParameter("val"));
                    	   }
                       }catch(Exception e){
                    	   out.print(e);
                       }
                    %> </h1>
                    <div class="line"></div>
                </div>
            </div>
        </div>
    </section>
    <% try{
    	 if(id != null) {
    	PreparedStatement ps=con.prepareStatement("SELECT * FROM product WHERE cat_id=?");
    	         ps.setString(1,id);
    	     rsp=ps.executeQuery();
       		
       		}else if(request.getParameter("value").equals("lateset"))
           	{
       	    	rsp=stmt.executeQuery("SELECT * FROM product ORDER BY pro_id DESC LIMIT 10");
       	       	} else if(request.getParameter("value").equals("sale")){
       	    		rsp=stmt.executeQuery("SELECT * FROM product WHERE sale>0");
       	    		
       	    	}
       	    	else if(request.getParameter("value").equals("trend"))
       	    	{
       	    		rsp=stmt.executeQuery("SELECT * FROM product ORDER BY pro_quantity DESC LIMIT 10");
       	    		
       	    	}else if(request.getParameter("value").equals("search"))
         	   {
       	    		rsp=stmt.executeQuery("SELECT * FROM product INNER JOIN category ON product.cat_id=category.cat_id WHERE pro_name LIKE '%"+request.getParameter("val")+"%' OR pro_details LIKE '%"+request.getParameter("val")+"%' OR author LIKE '%"+request.getParameter("val")+"%' OR publisher LIKE '%"+request.getParameter("val")+"%' OR cat_name LIKE '%"+request.getParameter("val")+"%'  "); 
         	   }
       	    	else
       	    	{
       	    		rsp=stmt.executeQuery("SELECT * FROM product  ORDER BY pro_id ASC");
       	    	}
    	
    %>
    <section>
        <div class="container py-4">
            <div class="row g-3 ">
            
          

            
           <%  
            while(rsp.next())
        	 {
            	pid=rsp.getInt("pro_id");
        	%> 
        	   
                <div class="col-sm-6 col-md-4 col-lg-4 col-xl-3">
                    <a href="productdetail.jsp?proid=<%= pid %>" class="text-decoration-none text-dark">
                        <div class="card w-100 h-100">
                        
                        <div>    <img src="./images/<%out.print(rsp.getString("image")); %>" class="card-img-top" height="150px"> </div>
                            <div class="card-body">
                                <h5 class="card-title"><% out.print(rsp.getString("pro_name")); %></h5>
                                
                                 <h6 class="card-text">Price: <% out.print(rsp.getString("pro_price")); %></h6>
                                 <h6 class="card-text" style="color:red;"><% if(rsp.getInt("sale")>0 ){ out.print("Sale: "+rsp.getString("sale")+"% off");} %></h6>
                                <p class="card-text overtext"><% out.print(rsp.getString("pro_details")); %></p>
                               
                                 </div>
                                 <div class="card-footer w-100 h-100">
                                 <% if(session.getAttribute("name")!=null){ %>
                                <a href="db_wishlist.jsp?pid=<%= pid %>" class="btn  allbtn ">Wishlist</a>
                                <%}else
                                	{%>
                                	   <a class="btn allbtn" type="button" data-bs-toggle="modal" data-bs-target="#loginModal">Wishlist </a>
                                   <%	}%>
                             </div>
                        </div>
                    </a>

                </div>
                <% } %>
            </div>
    </section>
    <%
    }catch(Exception e)
    {
    	out.print(e);
    } %>
</body>
<%@ include file="Footer.jsp" %>











