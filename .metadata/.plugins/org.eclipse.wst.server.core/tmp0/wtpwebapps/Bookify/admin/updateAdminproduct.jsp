<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%!int id; %>

<% 
   Statement st=con.createStatement();
	  ResultSet rs,rsc;
  String pid=request.getParameter("id");
  PreparedStatement ps=con.prepareStatement("SELECT * FROM product INNER JOIN category ON product.cat_id=category.cat_id WHERE pro_id=?");
  ps.setString(1,pid);
  rs=ps.executeQuery();
	  %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>
</head>

<body>
    <section class="py-5">
        <div class="container bg-light py-5">
            <div class="row py-3">
                <div class="col text-center">
                    <h3>Update Book </h3>
                    <span class="line"></span>
                </div>
            </div>

            <div class="row px-5">
                <div class="col justify-content-around">
                    <div class="card ms-auto px-4 py-3">
                      <%if(rs.next())
                    	  {%>
                        <form id="adminupdateprouctform" method="post" action="../updateproduct" enctype="multipart/form-data">
                            
                             <div class=" m-3 border-3 ">   
                                <input type="text" disabled class="form-control" value="<% out.println(rs.getInt("pro_id"));%>"> 
                                <input type="hidden" id="p_id" name="p_id" value="<% out.print(rs.getInt("pro_id")); %>">
                            </div>
                            
                            <div class=" m-3 border-3 ">
                                <input type="text" id="updatepname" name="updatepname" class="form-control" placeholder="Name" value="<% out.print(rs.getString("pro_name"));%>">
                                <label for="pnamemsg" id="pnamemsg" class=" d-none errmsg form-label m-0 p-0">Name is Required</label>
                            </div>

                            <div class=" m-3 border-3 ">
                                
                                <input type="text" id="updatepdetails" name="updatepdetails" class="form-control" row="4" placeholder="Enter the Details.."  value="<% out.println(rs.getString("pro_details"));%>" >
                                <label for="prodetailsmsg" id="prodetailsmsg"  class=" d-none errmsg form-label m-0 p-0">Some details fill up</label>
                            </div>
                           
                            <div class="row">
                                <div class="m-3 form-group  border-3 col-4 ">
                                    <input type="text" id="updateauthor" name="updateauthor" class="form-control"  placeholder="Author" value="<% out.println(rs.getString("author"));%>">
                                    <label for="authormsg" id="authormsg" class=" d-none errmsg form-label">Author is Required</label>
                                </div>

                                <div class="m-3 form-group  border-3 col-5">
                                    <input type="text" id="updatepublisher" name="updatepublisher" class="form-control" placeholder="publisher"  value="<% out.println(rs.getString("publisher"));%>">
                                </div>
                            </div>
                           
                            <div class=" m-3  border-3 ">
                                
                                <% String img=rs.getString("image"); %>
                                 <input type="checkbox" id="image1" name="image" value="<% out.println(img); %>" checked>
                                  <img class="mx-2" src="../images/<% out.print(img); %>"  height="150px">  
                                  <input type="file" id="image1" name="image1" class="form-control-lg" placeholder="First Image">                                

                            </div>


                            <div class="row">
                                <div class="m-3 col-3 border-3 ">
                                    <input type="text" id="updateprice" name="updateprice" class="form-control"  placeholder="Price.." value="<% out.println(rs.getString("pro_price"));%>">
                                    <label for="ppricemsg" id="ppricemsg" class=" d-none errmsg form-label">Price is Required</label>
                                </div>
                                <div class="m-3 col-3 border-3 ">
                                    <input type="text" id="updatequantity" name="updatequantity" class="form-control" placeholder="Quantity.." value="<% out.println(rs.getString("pro_quantity"));%>">
                                    <label for="pquantitymsg" id="pquantitymsg" class=" d-none errmsg form-label">Quantity is Required</label>
                                </div>
                                <div class="m-3 col-3  border-3 ">
                                    <input type="text" id="updatesale" name="updatesale" class="form-control" placeholder="sale" value="<% out.println(rs.getString("sale"));%>">
                               <!-- <label for="salemsg" id="salemsg" class=" d-none errmsg form-label">Sale is  Required</label> -->
                                </div>
                            </div>
                         
                            <div class="m-3  border-3">
                                <select class="form-select form-control-lg mb-3" name="updatecategory" id="updatecategory"
                                    aria-label="Default select example">
                                    <option value="blank">Select category</option>
                                    <% rsc=st.executeQuery("SELECT * FROM category");
                                    while(rsc.next()){
                                      if(rsc.getInt("cat_id") == rs.getInt("cat_id"))
                                      {%>
                                    	  <option selected value="<% out.println(rsc.getInt("cat_id"));%>"><% out.println(rsc.getString("cat_name"));  %></option>
  
                                     <% }else
                                     {
                                    %>

                                    <option value="<% out.println(rsc.getInt("cat_id"));%>">
                                        <% out.println(rsc.getString("cat_name")); %></option>
                                    <% }
                                      }%>
                                </select>
                                <label for="pcategorymsg" id="pcategorymsg" class=" d-none errmsg form-label">Please select the Category</label>
                            </div>
                            
                            <div class="m-3  border-3">
                                <input type="submit" class="btn btn-primary btn-block mb-4 w-25" value="Submit" />
                            </div>
                        </form>
                        <%} %>
                    </div>
                </div>
            </div>


        </div>
    </section>
     <script src="./javascript/updateproscript.js"></script>

</body>

<%@ include file="footer.jsp"%>