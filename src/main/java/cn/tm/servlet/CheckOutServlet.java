package cn.tm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.*;

import cn.tm.connection.DbCon;
import cn.tm.dao.OrderDao;
import cn.tm.model.*;

public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	try(PrintWriter out= response.getWriter()) {
		
		out.println("check out servelet");
		
		SimpleDateFormat formatter=new SimpleDateFormat ("yyyy-MM-dd");
		Date date=new Date();

		//retrive all cart products
		ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
		
		User auth = (User) request.getSession().getAttribute("auth"); 

		if(cart_list != null && auth != null){
			
			for(Cart c:cart_list){
				//preapre the order object

				Order order = new Order();
				order.setPid(c.getPid());
				order.setUid(auth.getUid());
				order.setQuantity(c.getQuantity());
				order.setDate(formatter.format(date));
				//instantiate the dao class
				OrderDao oDao = new OrderDao(DbCon.getConnection());
				//calling the isert method
				boolean result =oDao.insertOrder(order);
				if(!result) break;
				
				
			}
			
			cart_list.clear();
			response.sendRedirect("index.jsp");
			
		}else {
			if(auth == null) response.sendRedirect("login.jsp"); 
			response.sendRedirect ("shopping-cart.jsp");


		}
		
		
		
	}catch(Exception e) {
		System.out.println(e);
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
