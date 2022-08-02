package cn.tm.servlet;

import jakarta.servlet.RequestDispatcher;
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
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.tm.connection.DbCon;
import cn.tm.dao.UserDao;
import cn.tm.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String mail = request.getParameter("mail");
			String pass = request.getParameter("pass");

			

			boolean value=false;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technomart","root", "8600");
				PreparedStatement ps = con.prepareStatement("select * from admin where mail=? and pass=?");

		         ps.setString(1, mail);
		         ps.setString(2, pass);
		         ResultSet rs =ps.executeQuery();
		         value = rs.next();   
			
			
			 if(value){
				 		System.out.println("try");
//		            RequestDispatcher rs1 = request.getRequestDispatcher("ad-index.html");
//		            rs1.forward(request, response);
//				 		response.sendRedirect("ad-index.jsp");
				 		request.getRequestDispatcher("ad-index.jsp").forward(request, response);
		        }else {
		        	try {
						UserDao udao = new UserDao(DbCon.getConnection());
						User user = udao.userLogin(mail, pass);

						if (user != null) {
							// out.println("User login");
							request.getSession().setAttribute("auth", user);
							// response.sendRedirect("index.jsp");
							request.getRequestDispatcher("index.jsp");

						} else {
							// out.println("User login failed");

						}
						String lfail = "username or password is incorrect";
						request.setAttribute("lfail", lfail);
						request.getRequestDispatcher("login.jsp").forward(request, response);

					} catch (ClassNotFoundException | SQLException e) {
						e.printStackTrace();
					}
		        }
			} catch (Exception e) {
				e.printStackTrace();
			}
			

			

			//out.println(mail + pass);
		}

	}

}
