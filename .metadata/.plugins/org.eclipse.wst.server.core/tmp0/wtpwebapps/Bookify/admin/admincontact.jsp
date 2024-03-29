<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%! int Id; %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin User contact</title>
</head>

<body>
    
  <section id="usercontactlistSection" class="mt-4">
    <div class="container d-flex justify-content-center">
      <h1 class="m-auto">User Contact Us</h1>
    </div>
  </section>

    <section class="py-5">
        <div class="container text-center">
            <div class="row">
                <div class="col-1">
                    <h5> ID</h5>
                </div>
                <div class="col-2">
                    <h5>NAME</h5>
                </div>
                <div class="col-2">
                    <h5>NUMBER</h5>
                </div>
                <div class="col-2">
                    <h5>Email</h5>
                </div>
                <div class="col-3">
                    <h5>Message</h5>
                </div>
                <div class="col-1">
                    <h5>DELETE</h5>
                </div>
                <hr />
            </div>
        </div>
    </section>
 <%
  try{
	   
	   Statement st=con.createStatement();
	   ResultSet rs;
	   rs=st.executeQuery("SELECT * FROM contact");
	   while(rs.next()){
		   Id=rs.getInt("cid");
  %> 
        <section>
            <div class="container text-center">
                <div class="row">
                    <div class="col-1">
                        <h5><% out.print(rs.getInt("cid")); %> </h5>
                    </div>
                    <div class="col-2">
                        <h5><% out.print(rs.getString("cname")); %></h5>
                    </div>
                    <div class="col-2">
                        <h5><% out.print(rs.getString("cnumber")); %> </h5>
                    </div>
                    <div class="col-2">
                        <h5><% out.print(rs.getString("cemail")); %> </h5>
                    </div>
                    <div class="col-3">
                        <h5><% out.print(rs.getString("cmessage")); %></h5>
                    </div>
                    <div class="col-1">
                    <a href="deleteAdmincontact.jsp?id=<%= Id%>"><i class="fa-solid fa-trash"></i></a>
                    </div>


                    <hr />
                </div>
            </div>
        </section>
     <%
	   }
	   }catch(Exception e)
  {
    out.print(e);
  }%>
   
</body>

</html>
<%@ include file="footer.jsp"  %>