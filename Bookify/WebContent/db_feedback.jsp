<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
  String fname=request.getParameter("feedname");
  String femail=request.getParameter("femail");
  String feedback=request.getParameter("feedback");
  //out.println(fname);
  //out.println(femail);
  //out.println(feedback);
  try{
	  
	  PreparedStatement ps=con.prepareStatement("INSERT INTO feedback(fname,femail,feedback) VALUES(?,?,?)");
 	  ps.setString(1,fname);
 	  ps.setString(2,femail);
 	  ps.setString(3,feedback);
 	  ps.executeUpdate();
 	 %><script type="text/javascript"> alert("Thank you for Feedback..."); </script>
 	<%
	  request.getRequestDispatcher("Index.jsp").include(request, response);
  }catch(Exception e)
  {
	  out.println(e);
  }

%>