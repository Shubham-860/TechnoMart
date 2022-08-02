<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <h1 class="bg-dark">Orders</h1>
            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col"><span class="fs-4">User id</span></div>
                    <div class="col"><span class="fs-4">Product ID</span></div>
                    <div class="col"><span class="fs-4">Product name</span></div>
                    <div class="col"><span class="fs-4">Price</span></div>
                    <div class="col"><span class="fs-4">Quantity</span></div>
                </div>
                
                
                <%
                
                Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technomart","root","8600");
	            Statement stmt = con.createStatement();
	            ResultSet rs = stmt.executeQuery("SELECT * FROM orders");
	            int pid=rs.getInt("pid");
	                while(rs.next()) {
	                	 ResultSet rsp = stmt.executeQuery("SELECT * FROM product Where pid= 'pid'");
	                	 	while(rsp.next()){
                %>
                
                
                
                <div class="row text-center" style="border-top-width: 1px;border-top-style: solid;">
                    <div class="col"><span class="fs-6"><%=rs.getInt("uid") %></span></div>
                    <div class="col"><span class="fs-6"><%=rsp.getInt("pid") %></span></div>
                    <div class="col"><span class="fs-6"><%=rsp.getString("pname") %></span></div>
                    <div class="col"><span class="fs-6"><%=rsp.getInt("prate")*rs.getInt("quantity") %></span></div>
                    <div class="col"><span class="fs-6"><%=rs.getInt("quantity") %></span></div>
                </div>
                
                <%}
	               	}%>
            </div>
        </section>
    </main>


<%@include file="fix/scripts.jsp" %>
</body>
</html>
