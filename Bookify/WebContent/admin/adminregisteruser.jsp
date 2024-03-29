<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%! int Id; %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register User</title>
</head>

<body>

  <section id="ReguserlistSection" class="mt-4">
    <div class="container d-flex justify-content-center">
      <h1 class="m-auto">Register User</h1>
    </div>
  </section>
 

    <section class="py-5">
        <div class="container">
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
                <div class="col-3">
                    <h5>EMAIL</h5>
                </div>
                <div class="col-1">
                    <h5>GENDER</h5>
                </div>
                <div class="col-2">
                    <h5>PASSWORD</h5>
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
	   rs=st.executeQuery("SELECT * FROM user");
	   while(rs.next()){
		   Id=rs.getInt("uid");
  %>
  
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-1">
                        <h5><% out.print(rs.getInt("uid")); %> </h5>
                    </div>
                    <div class="col-2">
                        <h5><% out.print(rs.getString("name")); %> </h5>
                    </div>
                    <div class="col-2">
                        <h5><% out.print(rs.getString("number")); %></h5>
                    </div>
                    <div class="col-3">
                        <h5><% out.print(rs.getString("email")); %> </h5>
                    </div>
                    <div class="col-1">
                        <h5><% out.print(rs.getString("gender")); %> </h5>
                    </div>
                    <div class="col-2">
                        <h5><% out.print(rs.getString("password")); %> </h5>
                    </div>
                    <div class="col-1">
                        <a href="deleteAdminreguser.jsp?id=<%= Id%>"><i class="fa-solid fa-trash"></i></a>
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