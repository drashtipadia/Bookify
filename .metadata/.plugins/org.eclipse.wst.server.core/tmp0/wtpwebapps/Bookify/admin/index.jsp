<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>

<% if(session.getAttribute("adminname") == null){
	 response.sendRedirect("adminlogin.jsp");
}
	%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
</head>
<body>
    <div class="">
      <img src="../images/adminindex.png"  class="img-fluid h-80 w-100"/>
    </div>
</body>
</html>





<%@ include file="footer.jsp" %>