package cn.tm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import cn.tm.model.Cart;

public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			
			ArrayList<Cart> cartList=new ArrayList<>();
			
			int pid = Integer.parseInt(request.getParameter("pid"));
			Cart cm = new Cart();
			cm.setPid(pid);
			cm.setQuantity(1);
			
			
			HttpSession session = request.getSession();
			ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
			
			if(cart_list == null) {
				    cartList.add(cm);
				    session.setAttribute("cart-list", cartList);
				   // out.println("session created and added the list");
				}else{
					cartList= cart_list;
					boolean exists = false;
					
					for(Cart c:cart_list) {
						if(c.getPid() == pid) {
							exists = true;
							System.out.println("Product exists: ");
						}
						
					}	
					if(!exists) {
						cartList.add(cm);
						//response.sendRedirect("prebuild-computers.jsp");
					}
					
			}
			
			for(Cart c:cart_list) {
				System.out.println(c.getPid());
			}
				             
		}catch(Exception e) {
			System.out.print(e);
 		//	out.print(e);
		}
		response.sendRedirect("prebuild-computers.jsp");
	}

}
