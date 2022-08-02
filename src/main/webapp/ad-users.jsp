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
                <h1 class="bg-dark">Users</h1>
            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col"><span class="fs-4">User id</span></div>
                    <div class="col"><span class="fs-4">Name</span></div>
                    <div class="col"><span class="fs-4">Mail</span></div>
                    <div class="col"><span class="fs-4">Number</span></div>
                    <div class="col"><span class="fs-4">Address</span></div>
                </div>
                
                <%
                
                Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technomart","root","8600");
	            Statement stmt = con.createStatement();
	            ResultSet rs = stmt.executeQuery("SELECT * FROM user");
	                while(rs.next()) {
                
                %>
                
                
                <div class="row text-center" style="border-top-width: 1px;border-top-style: solid;">
                    <div class="col"><span class="fs-6"><%=rs.getInt("uid")%></span></div>
                    <div class="col"><span class="fs-6"><%=rs.getString("fname") %><%=rs.getString("lname") %> </span></div>
                    <div class="col"><span class="fs-6"><%=rs.getString("mail") %></span></div>
                    <div class="col"><span class="fs-6"><%=rs.getLong("number") %></span></div>
                    <div class="col"><span class="fs-6"><%=rs.getString("address") %></span></div>
                </div>
                
                
                <%}%>
            </div>
        </section>
    </main>


<%@include file="fix/scripts.jsp" %>
</body>
</html>
