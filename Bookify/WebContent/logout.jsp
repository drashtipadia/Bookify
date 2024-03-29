<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>

<%
  session.removeAttribute("name");
  session.removeAttribute("id");
  response.sendRedirect("Index.jsp");
%>