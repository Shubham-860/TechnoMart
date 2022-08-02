    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark clean-navbar" style="height: 49px;background: var(--bs-gray-900);--bs-body-bg: var(--bs-dark);--bs-body-color: #ffffff;">
        <div class="container-fluid"><a class="navbar-brand logo" href="index.jsp">TechnoMart</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse text-white-50 bg-dark" id="navcol-1" style="margin-top: -9px;">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="prebuild-computers.jsp">Computers</a></li>
                    <li class="nav-item"><a class="nav-link" href="customized-computer.jsp"><strong>CUSTOMIZE</strong></a></li>
                    <li class="nav-item"><a class="nav-link" href="about-us.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact-us.jsp">Contact Us</a></li>
                    <li class="nav-item" ><a class="btn btn-dark" role="button" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" href="shopping-cart.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-cart-dash"><path d="M6.5 7a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4z"></path><path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"></path></svg>
                    <span class="badge bg-dark fw-light">
                    <% try{
                    	if(cart_list != null || cart_list.size() !=0 ){%>${cart_list.size()}<% }	}  catch(Exception e){}%>
                    
                    </span>
                    </a></li>
                    
                         <% 
                         if(auth == null ) {
                         %>
                                 
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                    <li class="nav-item"  style="padding: 0px; margin: 0px;"><a class="nav-link" href="registration.jsp">signup</a></li>
          		<%}
                         
                	else
                	
                {%>
                    <li class="nav-item"><a class="btn btn-dark" href="profile.jsp" role="button" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-person-fill"><path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path></svg></a></li>
                    <li class="nav-item"><a class="nav-link active" href="logout">logout </a></li>
			                
            	 <%
            	 	} 
            	 %> 
                
                </ul>
            </div>
        </div>
    </nav>