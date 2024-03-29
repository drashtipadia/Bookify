<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%! int Id; %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Feedback</title>
</head>
<body>
<section id="FeedbacklistSection" class="mt-4">
    <div class="container d-flex justify-content-center">
      <h1 class="m-auto">User Feedback</h1>
    </div>
  </section>

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-1">
                    <h5> ID</h5>
                </div>
                <div class="col-1">
                    <h5>NAME</h5>
                </div>

                <div class="col-3">
                    <h5>EMAIL</h5>
                </div>
                <div class="col-5">
                    <h5>FEEDBACK</h5>
                </div>
                <div class="col-1">
                    <h5>STATUS</h5>
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
	   rs=st.executeQuery("SELECT * FROM feedback");
	   while(rs.next()){
		   Id=rs.getInt("fid");
  %>
 
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-1">
                        <h5><% out.print(rs.getInt("fid")); %> </h5>
                    </div>
                    <div class="col-1">
                        <h5><% out.print(rs.getString("fname")); %></h5>
                    </div>
                    <div class="col-3">
                        <h5> <% out.print(rs.getString("femail")); %></h5>
                    </div>
                    <div class="col-5">
                        <h5><% out.print(rs.getString("feedback")); %> </h5>
                    </div>
                    <div class="col-1">
                        <%  if(rs.getString("feed_status") == null){ %>
                            <input type="checkbox" name="status" value="True" onclick="feedbackcheckredirect(<%= Id %>)">
                            <% }else { %>
                            <input type="checkbox" name="status" checked onclick="feedbackuncheckredirect(<%= Id %>)">
                             <% }  %>  
                    </div>
                    <div class="col-1">
                    <a href="deleteAdminfeedback.jsp?id=<%= Id%>"><i class="fa-solid fa-trash"></i></a>
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
  } %>
 
    <script src="./javascript/feedbackcheck.js"></script>
   
</body>

</html>
<%@ include file="footer.jsp"  %>