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
                <section>
                    <div>
                        <h1 class="bg-dark">Feedback</h1>
                    </div>
                    <div class="container">
                        <div class="row text-center">
                            <div class="col-1"><span class="fs-4">ID</span></div>
                            <div class="col-2"><span class="fs-4">Name</span></div>
                            <div class="col-2"><span class="fs-4">Subject</span></div>
                            <div class="col-3"><span class="fs-4">E-mail</span></div>
                            <div class="col-4"><span class="fs-4">Massage</span></div>
                        </div>
                        
                        
                        <%
                
                Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technomart","root","8600");
	            Statement stmt = con.createStatement();
	            ResultSet rs = stmt.executeQuery("SELECT * FROM contact");
	                while(rs.next()) {
                
                %>
                        <div class="row text-center" style="border-top-width: 1px;border-top-style: solid;">>
                            <div class="col-1"><span class="fs-6"><%=rs.getInt("conid")%></span></div>
                            <div class="col-2"><span class="fs-6"><%=rs.getString("name")%></span></div>
                            <div class="col-2"><span class="fs-6"><%=rs.getString("subject")%></span></div>
                            <div class="col-3"><span class="fs-6"><%=rs.getString("email")%></span></div>
                            <div class="col-3"><span class="fs-6"><%=rs.getString("message")%></span></div>
                        </div>
                        <%} %>
                    </div>
                </section>
            </div>
        </section>
    </main>


<%@include file="fix/scripts.jsp" %>
</body>
</html>
