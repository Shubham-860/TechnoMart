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

import cn.tm.model.User;

/**
 * Servlet implementation class CustomServlet
 */
public class CustomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("CustomSrvlet");

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		User auth = (User) request.getSession().getAttribute("auth"); 
		
		int uid =ParseInt(auth.getUid());
		String motherbord = request.getParameter("motherbord");
		String processer  = request.getParameter("processer");
		String ram = request.getParameter("ram");
		String graphics = request.getParameter("graphics");
		String ssd = request.getParameter("ssd");
		String hdd = request.getParameter("hdd");
		String psu = request.getParameter("psu");
		String cabinet = request.getParameter("cabinet");
		String cooler = request.getParameter("cooler");
		String fan = request.getParameter("fan");
		String moniter = request.getParameter("moniter");
		String ups = request.getParameter("ups");
		String keyboard = request.getParameter("keyboard");
		String mouse = request.getParameter("mouse");
		String mssage = request.getParameter("mssage");
		
		
		
		try {
			

            // loading drivers for mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
             
            //creating connection with the database
            Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/technomart","root","8600");
 
            PreparedStatement pst = con.prepareStatement("insert into custom values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1,null);
            pst.setInt(2,uid);
            pst.setString(3,motherbord);
            pst.setString(4,processer);
            pst.setString(5,ram);
            pst.setString(6,graphics);
            pst.setString(7,ssd);
            pst.setString(8,hdd);
            pst.setString(9,psu);
            pst.setString(10,cabinet);
            pst.setString(11,cooler);
            pst.setString(12,fan);
            pst.setString(13,moniter);
            pst.setString(14,ups);
            pst.setString(15,keyboard);
            pst.setString(16,mouse);
            pst.setString(17,mssage);
			
 
			int i=pst.executeUpdate();  
			if(i>0) {  
				response.sendRedirect("thanks.jsp");  
			}
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
	}

	private int ParseInt(int uid) {
		// TODO Auto-generated method stub
		return 0;
	}

}
