
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;


public class Validation extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	ResultSet rs=null;
		try{
			HttpSession session=request.getSession();
			Connection con=(Connection) session.getAttribute("con");
			PreparedStatement pst=(PreparedStatement)con.prepareStatement("select * from validation where userName=?  ");
		    pst.setString(1,request.getParameter("userName"));
		    String passWord=request.getParameter("passWord");
		    ServletContext context=request.getServletContext();
			rs= (ResultSet) pst.executeQuery();
	         if(rs.next())
	         {
	        	 if(passWord.equals(rs.getString(2)))
	        	 {
	        		 String name=rs.getString(4);
	        		 int id=rs.getInt(3);
	        	
	        		session.setAttribute("id",id);
	        		
	        		session.setAttribute("name",name);
	        		 RequestDispatcher rd=request.getRequestDispatcher("information.jsp");  
	        	        rd.forward(request, response);  
	        	 }
	        	 else
	        	 {
	        		 
	        		 RequestDispatcher rd=request.getRequestDispatcher("validation_error.jsp");  
	        	        rd.forward(request, response);
	        		 
	        		 
	        	 }
	         }
	         else
	         {
	        	 
        		 RequestDispatcher rd=request.getRequestDispatcher("validation_error.jsp");  
        	        rd.forward(request, response);
	         }
			
			}
		catch(Exception e)
		{
			out.println(e.getMessage());
		}
		
		
	}

}
