<%@ page import="java.sql.*"%>
<%! public Connection con;%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/bookify","root","");
	
}catch(Exception e)
{
	System.out.println(e);
}
     
%>