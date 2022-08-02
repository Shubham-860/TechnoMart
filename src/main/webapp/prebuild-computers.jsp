<%@page import="cn.tm.connection.DbCon"%>
<%@page import="cn.tm.model.*"%>
<%@page import="cn.tm.dao.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%	
	User auth =(User) request.getSession().getAttribute("auth");
	if (auth != null){
		request.setAttribute("auth", auth);
	}
	
	ProductDao pd = new ProductDao(DbCon.getConnection());
	List<Product> products= pd.getAllProducts();

	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	List<Cart> cartProduct = null;
	if(cart_list != null){
		ProductDao pDao = new ProductDao(DbCon.getConnection());
		cartProduct = pDao.getCartProducts(cart_list);
		request.setAttribute("cart_list", cart_list);
	}
	
%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>	
<title>TechnoMart</title>
<%@ include file="fix/head.jsp"%>
</head>
<body class="text-white bg-dark">
  <%@ include file="fix/nav.jsp" %>
	<main class="text-white bg-dark page login-page">
		
<section class="">
    <h1 style="margin-top: 0;">Pre-Built Computers</h1>
    <section class="text-white">
    
    <%
 		try{
 		 	if(!products.isEmpty()){
 		 		for(Product p:products){%>
 		 			<div class="container my-3 py3">
 				    <div class="row text-center justify-content-center py-3" style="border-top-width: 1px;border-top-style: solid;border-bottom-width: 01px;border-bottom-style: solid;">
 				        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-4 col-xxl-4 text-center"><img class="bg-dark border rounded border-dark shadow" src="<%=p.getPimg()%>" style="max-width: 335px;" /></div>
 				        <div class="col-sm-7 col-md-8 col-lg-6 col-xl-6 col-xxl-6">
 				            <h2 class="text-center pb-3" style="margin: 0;"> <%=p.getPname()%></h2>
 				            <p class="text-white text-start"><%=p.getPinfo()%></p>
 				        </div>
 				        <div class="col-sm-3 col-md-4 col-lg-2 col-xl-2 col-xxl-2 text-center">
						    <h4 class="text-center py-3" style="margin: 0;">Price: <%=p.getPrate()%></h4>
						    <a class="btn btn-outline-warning text-center m-1" role="button" href="add-to-cart?pid=<%=p.getPid()%>">Add to cart</a>
						</div>
 				    </div>
 				</div><%
 		 		}
 		 	}
 		}catch(Exception e){
 			System.out.print(e);
 			out.print(e);
 		}
    %>
<br/>    
        
        
        
    </section>
</section>
		
		
	</main>

	<%@ include file="fix/footer.jsp"%>
	<%@ include file="fix/scripts.jsp"%>
</body>
</html>