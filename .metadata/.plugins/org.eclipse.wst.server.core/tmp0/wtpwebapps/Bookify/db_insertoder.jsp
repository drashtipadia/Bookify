<%@ include file="connection.jsp" %>
<%@ page import="java.util.*" %>
<%
Statement st=con.createStatement();
ResultSet rsbill,rscart;
PreparedStatement ps,psorder,psupdateqty,deletecart;
String user=session.getAttribute("id").toString();
String date=java.time.LocalDate.now().toString();
try{
	if(request.getParameter("paymentType").equals("COD"))
	{
		ps=con.prepareStatement("INSERT INTO bill(uid,address1,address2,phone,city,state,payment_type,total_amount,bill_date) VALUES(?,?,?,?,?,?,?,?,?)");
		 ps.setString(1, user);
		 ps.setString(2, request.getParameter("address1"));
		 ps.setString(3, request.getParameter("address2"));
		 ps.setString(4, request.getParameter("phone"));
		 ps.setString(5, request.getParameter("city"));
		 ps.setString(6, request.getParameter("state"));
		 ps.setString(7, request.getParameter("paymentType"));
		 ps.setString(8, request.getParameter("totAmount"));
		 ps.setString(9, date);
		 ps.executeUpdate();
		
	}
	else
	{
		  ps=con.prepareStatement("INSERT INTO bill(uid,address1,address2,phone,city,state,payment_type,cardname,cardnumber,cvv,card_expiry,total_amount,bill_date) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		    ps.setString(1, user);
		    ps.setString(2, request.getParameter("address1"));
		    ps.setString(3, request.getParameter("address2"));
		    ps.setString(4, request.getParameter("phone"));
		    ps.setString(5, request.getParameter("city"));
		    ps.setString(6, request.getParameter("state"));
		    ps.setString(7, request.getParameter("paymentType"));
		    ps.setString(8, request.getParameter("cname"));
		    ps.setString(9, request.getParameter("Cnumber"));
		    ps.setString(10, request.getParameter("cvv"));
		    ps.setString(11, request.getParameter("cexpiry"));
		    ps.setString(12, request.getParameter("totAmount"));
		    ps.setString(13, date);
		    ps.executeUpdate();
		
	}
	
	
	
	
		 rsbill=st.executeQuery("SELECT * FROM bill WHERE uid='"+user+"' ORDER BY bill_date DESC,bill_id DESC LIMIT 1");
		  if(rsbill.next())
		  { 
			  //out.print("if");
			  String billid=rsbill.getString("bill_id");
			  //out.print(rsbill.getString("bill_id"));
			  rscart=st.executeQuery("SELECT * FROM cart INNER JOIN product ON cart.pro_id=product.pro_id  WHERE uid='"+user+"'");
			  while(rscart.next())
			  { 
				 // out.print("While");
				//	out.print(billid);  
				  psorder=con.prepareStatement("INSERT INTO ordertbl(pro_id,price,orderQty,status,bill_id) VALUES(?,?,?,?,?)");
				  psorder.setString(1, rscart.getString("pro_id"));
				  psorder.setString(2, rscart.getString("pro_price"));
				  psorder.setString(3, rscart.getString("quantity"));
				  psorder.setString(4, "Ordered");
				  psorder.setString(5, billid);
				  psorder.executeUpdate();
				  
				  int updateqty=rscart.getInt("pro_quantity")-rscart.getInt("quantity");
			       
				  
			       psupdateqty=con.prepareStatement("UPDATE product SET pro_quantity =? WHERE pro_id = ?");
			       psupdateqty.setInt(1, updateqty);
			       psupdateqty.setString(2, rscart.getString("pro_id"));
			       psupdateqty.executeUpdate();
				 
				 deletecart=con.prepareStatement("DELETE FROM cart WHERE cart_id = ?");
			      deletecart.setString(1, rscart.getString("cart_id"));
			    deletecart.executeUpdate();
			  }
		  }
		  out.print("<script>alert('order conform') </script>"); 
		  request.getRequestDispatcher("Index.jsp").include(request, response);
  
}catch(Exception e)
{
	out.print(e);
}
 
%>