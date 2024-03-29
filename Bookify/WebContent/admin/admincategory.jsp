<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%! int Id; %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
</head>

<body>

    <section class="mt-4">
        <div class="container d-flex justify-content-center">
            <h1 class="m-auto">Category</h1>
        </div>
    </section>

    <section class="py-4">
        <div class="container bg-light py-5">
           
            <div class="d-flex justify-content-center align-item-center m-2">

                <form method="post" id="addcategory" action="insertcategory.jsp">
                    <h3 class="mb-2">Add New Category</h3>
                    
                    <input type="text" name="newcategory" id="newcategory" class="form-control-lg w-75 mb-3"
                        placeholder="category......">
                        <br>
                    <label for="addcategorymsg" id="addcategorymsg" class=" d-none errmsg form-label mb-3">Add Category</label>
                    <input type="submit" class="btn btn-primary w-75" value="ADD">

                </form>
            </div>
           
        </div>
    </section>



    <section class="py-3">
        <div class="container text-center">
            <div class="row ">
                <div class="col-3">
                    <h5> ID</h5>
                </div>
                <div class="col-3">
                    <h5>NAME</h5>
                </div>


                <div class="col-3">
                    <h5>UPDATE</h5>
                </div>

                <div class="col-3">
                    <h5>DELETE</h5>
                </div>
                <hr />
            </div>
        </div>
    </section>
    <%
    Statement st=con.createStatement();
	   ResultSet rs;
	   rs=st.executeQuery("SELECT * FROM category");
	   while(rs.next()){
		Id=rs.getInt("cat_id");   
		   
    %>
        <section>
            <div class="container text-center">
                <div class="row justify-content-center " id="editRowcategory<%= Id%>">
                    <div class="col-3">
                        <h5><% out.println(rs.getInt("cat_id")); %> </h5>
                    </div>
                    <div class="col-3">
                        <h5><% out.println(rs.getString("cat_name")); %> </h5>
                    </div>

                    <div class="col-3">
                        <h5><a href="#" onClick="showUpdate(<%= Id%>);">Update</a></h5>
                    </div>
                    <div class="col-3">
                        <a href="deleteAdmincategory.jsp?id=<%= Id%>"  onClick="deleteerror"><i
                                class="fa-solid fa-trash"></i></a>
                    </div>

                    <hr />
                </div>


                <form id="editcategoryForm<%= Id%>" class="row d-none" action="updateAdmincategory.jsp"
                    method="post" onsubmit="return blankvalid(<%= Id%>);">

                    <div class="col-3">
                        <input type="text" disabled value="<% out.println(rs.getInt("cat_id"));%>">
                        <input type="hidden" name="cat_id" id="cat_id" value="<% out.println(rs.getInt("cat_id"));%>">
                    </div>
                    <div class="col-3">
                        <input type="text" name="cat_name" id="cat_name<%= Id%>"  value="<% out.println(rs.getString("cat_name"));%>"><br>
                        <label for="editcatmsg" id="editcatmsg<%= Id%>" class=" d-none errmsg form-label mb-3">Enter value</label>
                    </div>

                    <div class="col-3">
                        <input type="submit" value="Save" class="btn btn-primary">

                    </div>
                    <div class="col-3">
                        <input type="button" value="Cancel" class="btn btn-dark"
                            onClick="cancelEdit(<% out.println(rs.getInt("cat_id"));%>);">
                    </div>
                    <hr />

                </form>
            </div>
        </section>
    <%  } %>
    <script src="./javascript/category.js"></script>
</body>

</html>
<%@ include file="footer.jsp"  %>