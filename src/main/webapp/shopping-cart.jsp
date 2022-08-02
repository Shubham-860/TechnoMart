<%@page import="java.text.DecimalFormat"%>
<%@page import="cn.tm.dao.ProductDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="cn.tm.model.*" %>
    <%@ page import="cn.tm.connection.DbCon" %>
    <% 
    	DecimalFormat dcf = new DecimalFormat("#.##");
    	request.setAttribute("dcf", dcf);
    	User auth = (User) request.getSession().getAttribute("auth"); 
    	if(auth!=null){
    		request.setAttribute("auth", auth);
    	}
    	double total=0;
    	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    	List<Cart> cartProduct = null;
    	if(cart_list != null){
    		ProductDao pDao = new ProductDao(DbCon.getConnection());
    		cartProduct = pDao.getCartProducts(cart_list);
    		
    		total = pDao.getTotalCartPrice(cart_list);
    		request.setAttribute("cart_list", cart_list);
    		request.setAttribute("total", total);
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

        <main class="text-white bg-dark page shopping-cart-page">


		<%
		try{
		if(total==0){%>
		<section class="text-center text-white bg-dark clean-block clean-cart dark">
   			 <h1 class="display-4">Cart is Empty </h1>
   			 <div class="text-warning"><i class="fab fa-dropbox fa-5x text-center"></i></div>
		</section>	
			<%
		}else{%>
			
			



            <section class="text-white bg-dark clean-block clean-cart dark">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-9 col-xxl-9">

					
					<div class="w-100 my-2 py-1" style="border-bottom-width: 1px;border-bottom-style: solid;">
					    <div class="row g-0 text-center justify-content-center" style="margin-right: auto;margin-left: auto;">
					        <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 col-xxl-3 text-center">
					            <h1 class="fs-4" style="margin: 0;">Image</h1>
					        </div>
					        <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 col-xxl-4">
					            <h1 class="fs-4" style="margin: 0;">Name</h1>
					        </div>
					        <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center">
					            <h1 class="fs-4" style="margin: 0;">Quantity</h1>
					        </div>
					        <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center">
					            <h1 class="fs-4" style="margin: 0;">Price</h1>
					        </div>
					        <div class="col-md-auto col-lg-auto col-xl-auto col-xxl-auto text-center"><svg class="bi bi-trash fs-3 text-white" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
					                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"></path>
					                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"></path>
					            </svg></div>
					    </div>
					</div>



                            <!-- repeat -->

							<%
							if(cart_list != null){
								for(Cart c:cartProduct){%>
									
									<div class="w-100 my-2 py-1" style="border-bottom-width: 1px;border-bottom-style: solid;">
                                <div class="row g-0 text-center justify-content-center"  style="margin-right: auto;margin-left: auto;">
                                    <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 col-xxl-3 text-center">
                                     
                                        <img src="<%=c.getPimg() %>" style="max-width: 170px;" />
                                    
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 col-xxl-4">

                                        <p class="text-center text-light"><%= c.getPname() %></p>

                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center">
                                       
                                        <a href="quantity-inc-dec?action=inc&pid=<%= c.getPid()%>">

                                         <svg class="bi bi-plus fs-3 text-info mx-2"
                                                xmlns="http://www.w3.org/2000/svg" width="1em" height="1em"
                                                fill="currentColor" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z">
                                                </path>
                                        </svg>
                                         </a>          
                                         <input class="border rounded text-center" type="text" name="quantity"  value="<%=c.getQuantity() %>" style="width: 33px;" readonly />
                                        <a href="quantity-inc-dec?action=dec&pid=<%= c.getPid()%>">
                                                <svg class="bi bi-dash fs-3 text-info mx-2"
                                                xmlns="http://www.w3.org/2000/svg" width="1em" height="1em"
                                                fill="currentColor" viewBox="0 0 16 16">
                                                <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z">
                                                </path>
                                            </svg>
                                        </a>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-xxl-2 text-center">
                                        <p class="text-light"><%=dcf.format(c.getPrate()) %></p>
                                    </div>
                                    <div class="col-md-auto col-lg-auto col-xl-auto col-xxl-auto text-center">
                                        
                                        <a class="btn btn-outline-warning" role="button" href="remove-from-cart?pid=<%=c.getPid()%>">
                                           
                                            <svg class="bi bi-trash" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z">
                                                </path>
                                                <path fill-rule="evenodd"
                                                    d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z">
                                                </path>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            </div>


									
									
								<%}
							}
							%>

                            






                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-3 col-xxl-3 text-start"
                            style="margin-right: auto;margin-left: auto;">
                            <form method="post" action="checkout">
                                <div class="text-white bg-dark shadow-none summary">
                                    <h3 class="text-white">Summary</h3>
                                    <h4 class="bg-dark" style="background: var(--bs-white);border-top-style: none;border-top-color: var(--bs-gray-100);">
                                        
                                        <span class="text">Subtotal</span><span class="price">${total}</span>
                                  
                                    </h4>
                                    <h4 class="bg-dark"><span class="text">Shipping</span><span class="price">0</span>
                                    </h4>
                                    <h4 class="text-white bg-dark"
                                        style="border-top-width: 1px;border-top-style: solid;border-bottom-style: none;">
                                       
                                        <span class="text">Total</span><span class="price">&#8377; ${dcf.format(total)}</span>

                                    </h4><a class="btn btn-outline-info btn-lg d-block w-100" role="button" href="check-out">Buy Now</a>
                               
                                </div>
                            </form>
                            <div>
								    <div><span>Payment Method :   </span><span>Cash on delivery   </span></div>
								    
								    <% if(auth != null){ %>
								    <div><span>Address :   </span><br/><br/><span class="ps-1">  ${auth.address} </span></div>
								    <%} %>
								    
								</div>
                        </div>
                    </div>
                </div>
            </section>

		<%
		}	
		}catch(Exception e){
			System.out.print(e);
		}
		%>


        </main>



<%@ include file="fix/footer.jsp" %>
<%@ include file="fix/scripts.jsp" %>
</body>
</html>