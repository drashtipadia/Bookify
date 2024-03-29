<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
    String cname=request.getParameter("cname");
    String cnumber=request.getParameter("cnumber");
    String cemail=request.getParameter("cemail");
    String cmsg=request.getParameter("cusermsg");
    
    //out.println(cname);
    //out.println(cnumber);
    //out.println(cemail);
    //out.println(cmsg);
    try
    {
    	PreparedStatement ps=con.prepareStatement("INSERT INTO contact(cname,cnumber,cemail,cmessage) VALUES(?,?,?,?)");
    	ps.setString(1,cname);
    	ps.setString(2,cnumber);
    	ps.setString(3,cemail);
    	ps.setString(4,cmsg);
    	ps.executeUpdate();
    	%><script type="text/javascript"> alert("Thank you for contact..."); </script>
    	<%
    	request.getRequestDispatcher("Contact.jsp").include(request, response);
    }
    catch(Exception e)
    {
    	out.println(e);
    }
    
    

%>
