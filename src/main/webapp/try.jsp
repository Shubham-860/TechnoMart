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
                
                <%
                
                Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technomart","root","8600");
	            Statement stmt = con.createStatement();
	            ResultSet rs = stmt.executeQuery("SELECT * FROM product");
	                while(rs.next()) {
                
                %>
                
                <div class="row g-0 text-center" style="border-top-width: 1px;border-top-style: solid;">
                    <div class="col-1"><span class="fs-6"><%=rs.getInt("pid")%></span></div>
                    <div class="col-2"><span class="fs-6"><%=rs.getString("pname") %></span></div>
                    <div class="col-4"><span class="fs-6"><%=rs.getString("pinfo")%></span></div>
                    <div class="col-3"><img class="img-fluid" src="<%=rs.getString("pimg")%>"></div>
                    <div class="col-2"><span class="fs-6"><%=rs.getInt("prate") %></span></div>
                </div>
                <%} %>
            </div>
        </section>