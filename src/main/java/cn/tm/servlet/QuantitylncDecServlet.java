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
 * Servlet implementation class QuantitylncDecServlet
 */
public class QuantitylncDecServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter(); 
		response.setContentType("text/html;charset=UTF-8");
		try {
			String action = request.getParameter("action");
			int pid = Integer.parseInt(request.getParameter("pid"));
			
			ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
			
			if(action != null && pid>=1){
				if(action.equals("inc")) {
					for(Cart c:cart_list) {
						if(c.getPid()==pid) {
							int quantity = c.getQuantity();
							quantity++;
							c.setQuantity(quantity);
							response.sendRedirect("shopping-cart.jsp");
						}
					}
				}
				
				if(action.equals("dec")) {
					for(Cart c:cart_list) {
						if(c.getPid()==pid && c.getQuantity()>1) {
							int quantity = c.getQuantity();
							quantity--;
							c.setQuantity(quantity);
							break;
						}
					}
					response.sendRedirect("shopping-cart.jsp");
				}
				
			
			}else 
				response.sendRedirect("shopping-cart.jsp");
			
		}catch(Exception e ) {
			System.out.println(e);
			e.printStackTrace();
		}
	
	}

}
