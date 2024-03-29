<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
	String oldpassword=request.getParameter("adminoldpassword");
    String newpassword=request.getParameter("adminnewpassword");
    String user=session.getAttribute("adminname").toString();
    Statement st=con.createStatement();
    ResultSet rs;
    rs=st.executeQuery("SELECT * FROM  admin WHERE name='"+session.getAttribute("adminname")+"' and password='"+oldpassword+"'");
    if(rs.next())
    {
    	 try
    	    {
    	    	
    	    	PreparedStatement ps=con.prepareStatement("UPDATE admin SET password=? WHERE name=?");
    	    	ps.setString(1,newpassword);
    	    	ps.setString(2,user);
    	    	ps.executeUpdate();
    	    	
    	    	out.print("<script> alert('Password changed Successfully'); window.location='./adminProfile.jsp'; </script>");
    	    	
    	    }catch(Exception e)
    	    {
    	    	out.println(e);
    	    }
    	
    }
    else
    	{
    	out.print("<script> alert('Old Password Wrong...'); window.location='./adminProfile.jsp'; </script>");
    	}
    
   

%>
