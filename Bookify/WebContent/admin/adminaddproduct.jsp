<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<% 
   Statement st=con.createStatement();
	  ResultSet rs;
	  %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
</head>

<body>
    <section class="py-5">
        <div class="container bg-light py-5">
            <div class="row py-3">
                <div class="col text-center">
                    <h3>Add New Book </h3>
                    <span class="line"></span>
                </div>
            </div>

            <div class="row px-5">
                <div class="col justify-content-around">
                    <div class="card ms-auto px-4 py-3">
                      
                        <form id="adminaddprouctform" method="post" action="../insertproduct" enctype="multipart/form-data">

                            <div class=" m-3 border-3 ">
                                <input type="text" id="pro_name" name="pro_name" class="form-control" placeholder="Name">
                                <label for="pnamemsg" id="pnamemsg" class=" d-none errmsg form-label m-0 p-0">Name is Required</label>
                            </div>

                            <div class=" m-3 border-3 ">
                                <input type="text" id="pro_details" name="pro_details" class="form-control" placeholder="Enter the Details..">
                                <label for="prodetailsmsg" id="prodetailsmsg"  class=" d-none errmsg form-label m-0 p-0">Some details fill up</label>
                            </div>
                           
                            <div class="row">
                                <div class="m-3 form-group  border-3 col-4 ">
                                    <input type="text" id="author" name="author" class="form-control"  placeholder="Author">
                                    <label for="authormsg" id="authormsg" class=" d-none errmsg form-label">Author is Required</label>
                                </div>

                                <div class="m-3 form-group  border-3 col-5">
                                    <input type="text" id="publisher" name="publisher" class="form-control" placeholder="publisher">
                                </div>
                            </div>
                           
                            <div class=" m-3  border-3 ">
                                <input type="file" name="image1" id="image1" class="form-control-lg" placeholder="Select Image">
                                <label for="pimagemsg" id="pimagemsg" class=" d-none errmsg form-label">Please select the image</label>
                            </div>


                            <div class="row">
                                <div class="m-3 col-3 border-3 ">
                                    <input type="text" id="pprice" name="pprice" class="form-control"  placeholder="Price..">
                                    <label for="ppricemsg" id="ppricemsg" class=" d-none errmsg form-label">Price is Required</label>
                                </div>
                                <div class="m-3 col-3 border-3 ">
                                    <input type="text" id="pquantity" name="pquantity" class="form-control" placeholder="Quantity..">
                                    <label for="pquantitymsg" id="pquantitymsg" class=" d-none errmsg form-label">Quantity is Required</label>
                                </div>
                                <div class="m-3 col-3  border-3 ">
                                    <input type="text" id="sale" name="sale" class="form-control" placeholder="sale">
                                    <label for="salemsg" id="salemsg" class=" d-none errmsg form-label">Sale is  Required</label>
                                </div>
                            </div>
                         
                            <div class="m-3  border-3">
                                <select class="form-select form-control-lg mb-3" name="category" id="category"
                                    aria-label="Default select example">
                                    <option value="blank">Select category</option>
                                    <% rs=st.executeQuery("SELECT * FROM category");
                                    while(rs.next()){%>

                                    <option value="<% out.println(rs.getInt(1));%>">
                                        <% out.println(rs.getString("cat_name")); %></option>
                                    <% } %>
                                </select>
                                <label for="pcategorymsg" id="pcategorymsg" class=" d-none errmsg form-label">Please select the Category</label>
                            </div>
                            
                            <div class="m-3  border-3">
                                <input type="submit" class="btn btn-primary btn-block mb-4 w-25" value="Submit" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </section>
     <script src="./javascript/addproscript.js"></script>

</body>

<%@ include file="footer.jsp"%>