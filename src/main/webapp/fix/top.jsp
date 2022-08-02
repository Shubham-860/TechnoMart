<%@page import="cn.tm.dao.ProductDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="cn.tm.model.*" %>
    <%@ page import="cn.tm.connection.DbCon" %>
    <% User auth = (User) request.getSession().getAttribute("auth"); 
    	if(auth!=null){
    		request.setAttribute("auth", auth);
    	}
    	
    	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    	List<Cart> cartProduct = null;
    	if(cart_list != null){
    		ProductDao pDao = new ProductDao(DbCon.getConnection());
    		cartProduct = pDao.getCartProducts(cart_list);
    		request.setAttribute("cart_list", cart_list);
    	}
    	
    %>