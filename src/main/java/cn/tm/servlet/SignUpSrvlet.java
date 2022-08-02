package cn.tm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class SignUpSrvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("SignUpSrvlet");

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String fname=request.getParameter("fname");  
		String lname=request.getParameter("lname");  
		String mail=request.getParameter("mail");  
		double number=Double.parseDouble(request.getParameter("number"));  
		String address=request.getParameter("address");  
		String pass=request.getParameter("pass");  
		
		try {
			

            // loading drivers for mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
             
            //creating connection with the database
            Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/technomart","root","8600");
 
            PreparedStatement pst = con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
            pst.setString(1,null);
			pst.setString(2,fname);
			pst.setString(3,lname);
			pst.setString(4,mail);
			pst.setDouble(5,number);
			pst.setString(6,address);
			pst.setString(7,pass);
			int i=pst.executeUpdate();  
			if(i>0) {  
				response.sendRedirect("login.jsp");  
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
