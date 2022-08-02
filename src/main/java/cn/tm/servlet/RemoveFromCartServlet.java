package cn.tm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import cn.tm.model.Cart;

/**
 * Servlet implementation class RemoveFromCartServlet
 */
public class RemoveFromCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset-UTF-8");
		 try(PrintWriter out = response.getWriter()) {
			 String pid = request.getParameter("pid");
			
			 
			 if(pid != null) {
				 ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
				 if(cart_list != null) {
					 for(Cart c : cart_list) {
						 if (c.getPid()== Integer.parseInt(pid)) {
							 cart_list.remove(cart_list.indexOf(c));
							 break;
						 }
					 }
					 response.sendRedirect("shopping-cart.jsp");

				 }else {
					 out.println("else");
				 }
				 
			 }else {
				 response.sendRedirect("shopping-cart.jsp");
			 }
		 }catch (Exception e) {
			 System.out.println(e);
			 e.printStackTrace();
		 }
		
	}

}
