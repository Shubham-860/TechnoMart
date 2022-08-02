<%@ include file="fix/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>TechnoMart</title>
<%@ include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
  <%@ include file="fix/nav.jsp" %>
  
     <main class="text-white bg-dark page registration-page">
        <section class="text-white bg-dark clean-block clean-form dark" style="padding-bottom: 30px;margin-top: 10px;">
            <h1 class="text-center" style="margin-bottom: 0;margin-top: 0;">Sign up<br></h1>
        </section>
        <section class="text-white bg-dark clean-block clean-form dark" style="margin-top: 20px;">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-1"></div>
                    <div class="col-xxl-5">
                        <form class="text-white bg-dark shadow-none" method="post" action="signup" style="border-top-style: none;padding-top: 5px;">
							    <div class="text-white bg-dark d-flex" style="padding-bottom: 20px;"><svg class="bi bi-person-fill fs-2" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" style="margin-right: 10px;">
							            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
							        </svg><input class="border rounded form-control" type="text" name="fname" placeholder="First name" autocomplete="on" required /></div>
							    <div class="text-white bg-dark d-flex" style="padding-bottom: 20px;"><svg class="bi bi-person-fill fs-2" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" style="margin-right: 10px;">
							            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
							        </svg><input class="border rounded form-control" type="text" name="lname" placeholder="Last name" autocomplete="on" required /></div>
							    <div class="text-white bg-dark d-flex" style="padding-bottom: 20px;"><svg class="bi bi-envelope-fill fs-2" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" style="margin-right: 10px;">
							            <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z"></path>
							        </svg><input class="border rounded form-control" type="text" name="mail" placeholder="E-mail" autocomplete="on" required inputmode="email" /></div>
							    <div class="text-white bg-dark d-flex" style="padding-bottom: 20px;"><svg class="bi bi-phone-fill fs-2" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" style="margin-right: 10px;">
							            <path d="M3 2a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V2zm6 11a1 1 0 1 0-2 0 1 1 0 0 0 2 0z"></path>
							        </svg><input class="border rounded form-control" type="number" name="number" placeholder="Phone Number" autocomplete="on" required inputmode="numeric" /></div>
							    <div class="text-white bg-dark d-flex" style="padding-bottom: 20px;"><svg class="bi bi-house-fill fs-2" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" style="margin-right: 10px;">
							            <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"></path>
							            <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"></path>
							        </svg><input class="border rounded form-control" type="text" name="address" placeholder="Enter your address" autocomplete="on" required /></div>
							    <div class="text-white bg-dark d-flex" style="padding-bottom: 20px;"><svg class="bi bi-key-fill fs-2" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" style="margin-right: 10px;">
							            <path d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
							        </svg><input class="border rounded form-control" type="text" name="pass" placeholder="Enter your password" autocomplete="on" required /></div>
							    <div class="text-white bg-dark d-flex justify-content-center" style="padding-bottom: 20px;">
							    <button class="btn btn-primary btn-lg" type="submit" >Sign up</button>
							    </div>
							    <div class="text-white bg-dark d-flex justify-content-center" style="padding-bottom: 20px;"><span class="text-secondary">Already have an account <br /></span><a class="link-info" href="login.html" style="text-decoration: none;">click hear</a></div>
							</form>		
                    </div>
                    <div class="col-xxl-5"><img class="img-fluid border rounded border-dark" data-aos="fade-left" src="assets/img/gif/image_processing20210901-21066-135ydhi.gif"></div>
                    <div class="col-xxl-1"></div>
                </div>
            </div>
        </section>
    </main>
  <%@ include file="fix/footer.jsp" %>
<%@ include file="fix/scripts.jsp" %>
</body>
</html>