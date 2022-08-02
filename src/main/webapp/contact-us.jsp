<%@ include file="fix/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Contact Us</title>
<%@ include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
  <%@ include file="fix/nav.jsp" %>
  
      <main class="text-white bg-dark page contact-us-page">
    <section class="text-white bg-dark clean-block clean-form dark">
        <h1 style="text-align: center;margin-top: 0;">Contact Us</h1>
        <div class="container d-lg-flex d-xxl-flex align-items-lg-center justify-content-xxl-center align-items-xxl-center w-75" style="margin-top: 0;">
            <form class="text-white bg-dark shadow-none" style="width: 500px;border-style: none;" method="post" action="contact">
                <div class="mb-3"><label class="form-label" for="name">Name</label><input id="name" class="form-control" type="text" name="name" /></div>
                <div class="mb-3"><label class="form-label" for="subject">Subject</label><input id="subject" class="form-control" type="text" name="subject" /></div>
                <div class="mb-3"><label class="form-label" for="email">Email</label><input id="email" class="form-control" type="email" name="email" /></div>
                <div class="mb-3"><label class="form-label" for="message">Message</label><textarea id="message" class="form-control" name="message"></textarea></div>
                <div class="mb-3"><button class="btn btn-primary" type="submit">Send</button></div>
            </form>
            <div><img class="d-lg-flex align-items-lg-center" src="assets/img/gif/image_processing20210422-11473-j96faa.gif" style="width: 500px;" /></div>
        </div>
    </section>
</main>
  
    <%@ include file="fix/footer.jsp" %>
<%@ include file="fix/scripts.jsp" %>
</body>
</html>