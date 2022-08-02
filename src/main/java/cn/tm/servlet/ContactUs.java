package cn.tm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ContactSrvlet");

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String name=request.getParameter("name");  
		String subject=request.getParameter("subject");  
		String email=request.getParameter("email");  
		String message=request.getParameter("message");  
		
		try {
			

            // loading drivers for mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
             
            //creating connection with the database
            Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/technomart","root","8600");
 
            PreparedStatement pst = con.prepareStatement("insert into contact values(?,?,?,?,?)");
            pst.setString(1,null);
            pst.setString(2,name);
			pst.setString(3,subject);
			pst.setString(4,email);
			pst.setString(5,message);
 
			int i=pst.executeUpdate();  
			if(i>0) {  
				response.sendRedirect("index.jsp");  
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
