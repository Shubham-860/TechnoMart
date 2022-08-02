<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="utf-8">
<title>TechnoMart</title>
<%@include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
<%@include file="fix/ad-nav.jsp" %>


	<main class="text-white bg-dark page login-page" style="background: var(--bs-dark);">
        <section>
            <div>
                <h1 class="bg-dark">Product</h1>
            </div>
            <div class="container">
                <div class="row g-0 text-center">
                    <div class="col-1"><span class="fs-4">ID</span></div>
                    <div class="col-2"><span class="fs-4">Name</span></div>
                    <div class="col-4"><span class="fs-4">Info</span></div>
                    <div class="col-3"><span class="fs-4">Image</span></div>
                    <div class="col-2"><span class="fs-4">Price</span></div>
                </div>
                
            
                
                <div class="row g-0 text-center" style="border-top-width: 1px;border-top-style: solid;">
                    <div class="col-1"><span class="fs-6"></span></div>
                    <div class="col-2"><span class="fs-6"></span></div>
                    <div class="col-4"><span class="fs-6"></span></div>
                    <div class="col-3"><img class="img-fluid" src=""></div>
                    <div class="col-2"><span class="fs-6"></span></div>
                </div>
                
            </div>
        </section>
    </main>



<%@include file="fix/scripts.jsp" %>
</body>
</html>
