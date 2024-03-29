<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%


   String name=request.getParameter("rname");
   String number=request.getParameter("rnumber");
   String email=request.getParameter("remail");
   String gender=request.getParameter("gender");
   String password=request.getParameter("rpassword");
   //out.println(name);
   //out.println(number);
   //out.println(email);
   //out.println(gender);
   //out.println(password);
   try
   {
	  Statement st=con.createStatement();
	  ResultSet rs;
	  rs=st.executeQuery("SELECT * FROM user");
	  int f=0;
	  while(rs.next())
	  {
		    if(email.equals(rs.getString("email")))
		    {
		    	f=1;
		    }
			  
				  
	  }
	  if(f!=1)
	  {
	    PreparedStatement ps=con.prepareStatement("INSERT INTO user(name,number,email,gender,password) VALUES(?,?,?,?,?)");
        ps.setString(1,name);
        ps.setString(2,number);
        ps.setString(3,email);
        ps.setString(4,gender);
        ps.setString(5,password);
        ps.executeUpdate();
        %><script type="text/javascript"> alert('Register Successfully.. ');</script>
        <%
        
  	    rs=st.executeQuery("SELECT * FROM user WHERE email='"+email+"'");
        while(rs.next())
        {
        	session.setAttribute("name",rs.getString("name"));
  		    session.setAttribute("id",rs.getInt("uid"));
        }
          request.getRequestDispatcher("Index.jsp").include(request, response);
	    
	    
	  }else
	  {  %>
	    <script type="text/javascript"> alert("Already exits Email..."); </script>
		  
		<%  
		//response.sendRedirect("Header.jsp?registererror=Invalid");
		request.getRequestDispatcher("Index.jsp").include(request, response);
	  }
   
}catch(Exception e)
{
	out.println(e);
	//response.sendRedirect("Index.jsp");
	%><script type="text/javascript">
    alert("error");
</script>
	
<% }  


%>