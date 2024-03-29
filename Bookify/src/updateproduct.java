import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/updateproduct")
@MultipartConfig
public class updateproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updateproduct() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("p_id");
		String upname=request.getParameter("updatepname");
	    String detail=request.getParameter("updatepdetails");
	    String author=request.getParameter("updateauthor");
		String publisher=request.getParameter("updatepublisher");
		String pprice=request.getParameter("updateprice");
		String pquantity=request.getParameter("updatequantity");
		String psale=request.getParameter("updatesale");
		String pcategory=request.getParameter("updatecategory");
		
//		out.print("<h1>"+id+"</h1>");
//		out.println("<h1>"+upname+"</h1>");
//        out.println("<h1>"+detail+"</h1>");
//        out.println("<h1>"+author+"</h1>");
//        out.println("<h1>"+publisher+"</h1>");
//       
//      
//		 out.println("<h1>"+pprice+"</h1>");
//	     out.println("<h1>"+pquantity+"</h1>");
//	     out.println("<h1>"+psale+"</h1>");
//	     out.println("<h1>"+pcategory+"</h1>");
	     
	     
	  String filename;   
	  String filecheck=request.getParameter("image");
	   if(filecheck != null)
	    {
		   filename=filecheck;
//		   out.println("<h1>if porson</h1>");
//           out.println("<h1>"+filecheck+"</h1>");
	    }
	    else
	    {
	    	//out.println("<h1>else pordon</h1>");
	    	
	    	Part fileupdate=request.getPart("image1");
	        filename= fileupdate.getSubmittedFileName();
	        System.out.println(filename);
	        String uploadpath="C:/Users/Dell/Desktop/project/Bookify/WebContent/images/"+filename;

	        try
	        {
	        FileOutputStream fos=new FileOutputStream(uploadpath);
	        InputStream is=fileupdate.getInputStream();
	        byte[] data=new byte[is.available()];
	        is.read(data);
	        fos.write(data);
	        fos.close();
	        }catch(Exception e)
	        {
	        	e.printStackTrace();
	        }
//	        out.println("<h1>"+filename+"</h1>");
	    }
	   
	   
	   try {

     	Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bookify","root","");
     	
     	PreparedStatement ps=con.prepareStatement("UPDATE product SET pro_name=?,pro_details=?,author=?,publisher=?,image=?,pro_price=?,pro_quantity=?,sale=?,cat_id=? WHERE pro_id=?");
     	
     	ps.setString(1,upname);
     	ps.setString(2,detail);
     	ps.setString(3,author);
     	ps.setString(4,publisher);
     	ps.setString(5, filename);
     	ps.setString(6, pprice);
     	ps.setString(7, pquantity);
     	ps.setString(8, psale);
     	ps.setString(9, pcategory);
     	ps.setString(10, id);

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
