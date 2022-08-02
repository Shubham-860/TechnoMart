<%@page import="cn.tm.model.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="cn.tm.dao.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="cn.tm.model.*" %>
    <%@ page import="cn.tm.connection.DbCon" %>
    <% 
	    DecimalFormat dcf = new DecimalFormat("#.##");
		request.setAttribute("dcf", dcf);
    	User auth = (User) request.getSession().getAttribute("auth"); 
    	List<Order> orders = null;
    	if(auth!=null){
    		request.setAttribute("auth", auth);
    		orders = new OrderDao(DbCon.getConnection()).userOrder(auth.getUid());
    	}else{
    		response.sendRedirect("login.jsp");
    	}
    	
    	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    	List<Cart> cartProduct = null;
    	if(cart_list != null){
    		ProductDao pDao = new ProductDao(DbCon.getConnection());
    		cartProduct = pDao.getCartProducts(cart_list);
    		request.setAttribute("cart_list", cart_list);
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TechnoMart</title>
<%@include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
<%@include file="fix/nav.jsp" %>


	<main class="text-white bg-dark page login-page" style="background: var(--bs-dark);">
    <section class="fs-5 text-white bg-dark clean-block clean-cart dark px-2">
        <div class="row px-2">
            <div class="col-12 col-sm-12 col-md-12 col-lg-10 col-xl-5 col-xxl-5 text-start" style="margin-right: auto;margin-left: auto;">
                <h1 style="margin-top: 0;">Profile</h1>
                <form method="post" action="checkout">
                        <div class="row">
                            <div class="col-3 col-sm-3 col-md-2 col-lg-2 col-xl-3 col-xxl-3"><span class="fs-5">Name</span></div>
                            <div class="col"><span class="fs-5 px-2">${auth.fname}</span><span class="fs-5 px-2">${auth.lname}</span></div>
                        </div>
                        <div class="row">
                            <div class="col-3 col-sm-3 col-md-2 col-lg-2 col-xl-3 col-xxl-3"><span class="fs-5">E-Mail</span></div>
                            <div class="col"><span class="fs-5 px-2">${auth.mail}</span></div>
                        </div>
                        <div class="row">
                            <div class="col-3 col-sm-3 col-md-2 col-lg-2 col-xl-3 col-xxl-3"><span class="fs-5">Phone</span></div>
                            <div class="col"><span class="fs-5 px-2">${auth.number}</span></div>
                        </div>
                        <div class="row">
                            <div class="col-3 col-sm-3 col-md-2 col-lg-2 col-xl-3 col-xxl-3"><span class="fs-5">Address</span></div>
                            <div class="col"><span class="fs-5 px-2">${auth.address}</span></div>
                        </div>
                    </form>
            </div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-7 col-xxl-7">
                <div class="w-100 my-2 py-1 hidden-xl" style="border-bottom-width: 1px;border-bottom-style: solid;">
                    <div class="row g-0 text-center justify-content-center" style="margin-right: auto;margin-left: auto;">
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 col-xxl-3 text-center">
                            <h1 class="fs-6" style="margin: 0;">Image</h1>
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
                            <h1 class="fs-6" style="margin: 0;">Name</h1>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center">
                            <h1 class="fs-6" style="margin: 0;">Date</h1>
                        </div>
                        <div class="col-md-1 col-lg-1 col-xl-1 col-xxl-1 text-center">
                            <h1 class="fs-6" style="margin: 0;">Quantity</h1>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center">
                            <h1 class="fs-6" style="margin: 0;">Price</h1>
                        </div>
                        <div class="col-md-1 col-lg-1 col-xl-1 col-xxl-1 text-center"><svg class="bi bi-trash fs-5 text-white" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"></path>
                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"></path>
                            </svg></div>
                    </div>
                </div>
                
                <%
				if(orders != null){
				    for (Order o:orders){
				    %>
				        
				        <div class="w-100 my-2 py-1" style="border-bottom-width: 1px;border-bottom-style: solid;">
                    <div class="row g-0 text-center justify-content-center" style="margin-right: auto;margin-left: auto;">
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 col-xxl-3 text-center">
                        <img src="<%=o.getPimg() %>" style="max-width: 170px;" /></div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
                            <p class="fs-6 text-center text-light"><%=o.getPname()%></p>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center"><span class="fs-6"><%= o.getDate()%></span></div>
                        <div class="col-md-1 col-lg-1 col-xl-1 col-xxl-1 text-center"><span class="fs-6"> <%=o.getQuantity() %></span></div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center">
                            <p class="fs-6 text-light">₹ <%=o.getPrate() %></p>
                        </div>
                        <div class="col-md-1 col-lg-1 col-xl-1 col-xxl-1 text-center">
                        <a class="btn btn-outline-warning" role="button" href="">
                        <svg class="bi bi-trash" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"></path>
                                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"></path>
                                </svg></a></div>
                    </div>
                </div>
				        
				    <%}
				}%>
                
                
                
                
                
            </div>
        </div>
    </section>
</main>


<%@include file="fix/footer.jsp" %>
<%@include file="fix/scripts.jsp" %>
</body>
</html>
