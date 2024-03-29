import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.*;
import java.util.*;

@WebServlet("/insertproduct")
@MultipartConfig
public class insertproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public insertproduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String proname=request.getParameter("pro_name");
	    String detail=request.getParameter("pro_details");
	    String author=request.getParameter("author");
		String publisher=request.getParameter("publisher");
		String pprice=request.getParameter("pprice");
		String pquantity=request.getParameter("pquantity");
		String psale=request.getParameter("sale");
		String pcategory=request.getParameter("category");
		
        System.out.println(proname);
        System.out.println(detail);
        System.out.println(author);
        System.out.println(publisher);
       
      
		  System.out.println(pprice);
	        System.out.println(pquantity);
	        System.out.println(psale);
	        System.out.println(pcategory);
       
		// Date date = new Date();
	     // SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy");
	     //  String dte = formatter.format(date);
	     // System.out.print("Current date: "+dte); 

        Part file=request.getPart("image1");
        String filename= file.getSubmittedFileName();
        System.out.println(filename);
        String uploadpath="C:/Users/Dell/Desktop/project/Bookify/WebContent/images/"+filename;
      //  System.out.println(uploadpath);
        try
        {
        FileOutputStream fos=new FileOutputStream(uploadpath);
        InputStream is=file.getInputStream();
        byte[] data=new byte[is.available()];
        is.read(data);
        fos.write(data);
        fos.close();
        }catch(Exception e)
        {
        	//e.printStackTrace();
        }
        
      LocalDate currentDate=LocalDate.now();
        try {
//        	  int price=Integer.parseInt(pprice);
//      		int quantity=Integer.parseInt(pquantity);
//      		int sale=Integer.parseInt(psale); 
//      		int category=Integer.parseInt(pcategory);
        	Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bookify","root","");
        	
        	PreparedStatement ps=con.prepareStatement("INSERT INTO product (pro_name,pro_details,author,publisher,image,pro_price,pro_quantity,sale,date,cat_id)VALUES(?,?,?,?,?,?,?,?,?,?)");
        	
        	ps.setString(1,proname);
        	ps.setString(2,detail);
        	ps.setString(3,author);
        	ps.setString(4,publisher);
        	ps.setString(5, filename);
        	ps.setString(6, pprice);
        	ps.setString(7, pquantity);
        	ps.setString(8, psale);
        	ps.setDate(9, java.sql.Date.valueOf(currentDate));

        	ps.setString(10, pcategory);
        	int i=ps.executeUpdate();
        	if(i>0)
        	{
        	response.sendRedirect("/Bookify/admin/adminproduct.jsp");
        	}
        }catch(Exception e)
        {
        	System.out.println(e);
        }
      
   }
	
}