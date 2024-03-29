<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<% 
      String oldpassword=request.getParameter("uoldpassword");
      String newpassword=request.getParameter("unewpassword");
      
      out.print(oldpassword);
      out.print(newpassword);
      
      Statement st=con.createStatement();
      ResultSet rs;
      
      rs=st.executeQuery("SELECT * FROM user WHERE uid='"+session.getAttribute("id")+"' & password='"+oldpassword+"'");
      while(rs.next())
      {
   
    	  try
    	  { 	
    		PreparedStatement ps=con.prepareStatement("UPDATE user SET password=? WHERE uid=?");
    		ps.setString(1, newpassword);
    		ps.setString(2, session.getAttribute("id").toString());
    		ps.executeUpdate();
    		out.print("<script> alert('Your Password is update') </script>");
    		request.getRequestDispatcher("userprofile.jsp").include(request, response);    		
    	  }
    	  catch(Exception e)
    	  {
    		  System.out.print(e);
    		  out.print("<script> alert('Some Error Occur') </script>");
    		  request.getRequestDispatcher("userprofile.jsp").include(request, response);
    	  }
      }

%>