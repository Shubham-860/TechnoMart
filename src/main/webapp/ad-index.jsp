<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TechnoMart</title>
<%@include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
<%@include file="fix/ad-nav.jsp" %>


<main class="text-white bg-dark page login-page" style="background: var(--bs-dark);min-height: 80%;">
        <section>
            <div>
                <h1>Admin Dashboard</h1>
            </div>
            <div style="max-width: 90%;margin-right: auto;margin-left: auto;">
                <div class="row justify-content-center">
                    <div class="col-8 col-sm-5 col-md-4 col-lg-3 col-xl-3 col-xxl-3" style="margin: 1%;border-radius: 20px;background: rgb(0,255,239);background: linear-gradient(90deg, rgba(0,255,239,1) 0%, rgba(0,212,255,1) 100%);border-style: none;padding: 1%;">
                        <h4 style="text-align: center;margin-top: 10px;">Products Sold<br></h4>
                        <h3 style="text-align: center;">8</h3>
                    </div>
                    <div class="col-8 col-sm-5 col-md-4 col-lg-3 col-xl-3 col-xxl-3" style="margin: 1%;border-radius: 20px;background: rgb(238,209,237);background: linear-gradient(135deg, rgba(238,209,237,1) 0%, rgba(255,0,104,1) 100%);border-style: none;padding: 1%;">
                        <h4 style="text-align: center;margin-top: 10px;">Net Profit<br></h4>
                        <h3 style="text-align: center;">2190900</h3>
                    </div>
                    <div class="col-8 col-sm-5 col-md-4 col-lg-3 col-xl-3 col-xxl-3" style="margin: 1%;border-radius: 20px;border-style: none;padding: 1%;background: rgb(255,153,0);background: linear-gradient(45deg, rgba(255,153,0,1) 0%, rgba(255,203,125,1) 94%);">
                        <h4 style="text-align: center;margin-top: 10px;">New Customers<br></h4>
                        <h3 style="text-align: center;">3</h3>
                    </div>
                </div>
                <div class="row" style="margin-top: 5%;">
                    <div class="col text-center"><a class="btn btn-warning btn-lg" role="button" href="ad-add_product.jsp" style="min-width: 200px;">Products</a></div>
                    <div class="col text-center"><a class="btn btn-primary btn-lg" role="button" href="ad-order_details.jsp" style="min-width: 200px;">Order Details</a></div>
                    <div class="col text-center"><a class="btn btn-primary btn-lg" role="button" href="ad-users.jsp" style="min-width: 200px;">View Users</a></div>
                    <div class="col text-center"><a class="btn btn-primary btn-lg" role="button" href="ad-view_feedback.jsp" style="min-width: 200px;">Feedback</a></div>
                </div>
            </div>
        </section>
    </main>


<%@include file="fix/scripts.jsp" %>
</body>
</html>
