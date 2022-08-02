<%@page import="cn.tm.model.*"%>
<%@page import="cn.tm.dao.ProductDao"%>
<%@page import="cn.tm.connection.*"%>
<%@page import="java.util.*"%><%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%	
	User auth =(User) request.getSession().getAttribute("auth");
if (auth != null){
		request.setAttribute("auth", auth);
		response.sendRedirect("index.jsp");
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
<title>TechnoMart</title>
<%@ include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
  <%@ include file="fix/nav.jsp" %>
  
  <main class="text-white bg-dark page login-page" style="background: var(--bs-dark);">
        <section class="text-white bg-dark clean-block clean-form dark">
            <h1 class="text-center" style="margin: 27px;">Login</h1>
            <div class="container d-lg-flex d-xxl-flex align-items-lg-center justify-content-xxl-center align-items-xxl-center w-75">
                <form class="bg-dark border-dark shadow-none w-100" method="post" action="login">
                    <div data-aos="fade-right" data-aos-delay="150" class="mb-3"><label class="form-label" for="email">Email</label><input class="form-control item" type="email" id="email-1" name="mail"></div>
                    <div data-aos="fade-right" data-aos-delay="250" class="mb-3"><label class="form-label" for="password">Password</label><input class="form-control" type="password" id="password-1" name="pass">
                    <p class="text-danger pt-2">
                    
                    <%
                    String lfail="";
                    		try{                    			
                    	lfail = (String)request.getAttribute("lfail"); 
                    		
             			if(!lfail.isEmpty())
                    	out.println("username or password is incorrect"); 
             			}catch(Exception e){
                    			System.out.println(e);
                    		}
                    %>
                   
                    </p>
                    </div>
                    <div class="mb-3"></div><button class="btn btn-primary" data-aos="fade-right" data-aos-delay="350" type="submit" style="margin-top: 10px;">Log In</button>
                    <div data-aos="fade-right" data-aos-delay="450" style="padding-top: 20px;margin-bottom: -10px;"><small class="form-text text-white-50" style="padding-left: 0;">Don't have an account&nbsp;<a class="link-info text-decoration-none" href="registration.jsp">Click hear</a>&nbsp;</small></div>
                </form>
                <div><img class="d-lg-flex align-items-lg-center" data-aos="fade-left" data-aos-delay="200" src="assets/img/gif/bbcbf1039c5cfbbb996b47db25100ca7.gif" style="width: 450px;"></div>
            </div>
        </section>
    </main>
  
  <%@ include file="fix/footer.jsp" %>
<%@ include file="fix/scripts.jsp" %>
</body>
</html>