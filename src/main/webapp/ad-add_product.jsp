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
                <!-- Add Product Form -->
                <div class="row mx-auto">
                  <div class="col-md-7 mx-auto">
                      <h4 class="text-warning mt-5 mb-3">Product List</h4>

                    <form action="add-product" method="post" enctype="multipart/form-data" class="mb-4" >
                      <div class="row mb-2">
                        <div class="col-4"><label for="pname">Name:</label></div>
                        <div class="col-8"><input type="text" class="form-control bg-white text-dark border-0" name="pname" id="pname" required></div>
                      </div>
                      <div class="row mb-2">
                        <div class="col-4"><label for="pinfo">Info:</label></div>
                        <div class="col-8"><input type="text" class="form-control bg-white text-dark border-0" name="pinfo" id="pinfo" required></div>
                      </div>
                      <div class="row mb-2">
                        <div class="col-4"><label for="pimg">Image File:</label></div>
                        <div class="col-8"><input type="file" class="form-control bg-white text-dark border-0" name="pimgfile" id="pimgfile" accept="image/*" required></div>
                      </div>
                      <div class="row mb-2">
                        <div class="col-4"><label for="prate">Price:</label></div>
                        <div class="col-8"><input type="number" class="form-control bg-white text-dark border-0" name="prate" id="prate" required></div>
                      </div>
                      <div class="row mb-2">
                        <div class="col-4"><label for="cat_id">Category:</label></div>
                        <div class="col-8">
                          <select class="form-control bg-white text-dark border-0" name="cat_id" id="cat_id" required>
                            <option value="">Select Category</option>
                            <%-- Dynamically load categories --%>
                            <%
                            try {
                              java.sql.Connection conn = cn.tm.connection.DbCon.getConnection();
                              java.sql.PreparedStatement pst = conn.prepareStatement("SELECT `cat-id`, `cat-name` FROM catagory");
                              java.sql.ResultSet rs = pst.executeQuery();
                              while(rs.next()) {
                            %>
                            <option value="<%=rs.getInt("cat-id")%>"><%=rs.getString("cat-name")%></option>
                            <% }
                              rs.close(); pst.close();
                            } catch(Exception e) { %>
                            <option disabled>Error loading categories</option>
                            <% }
                            %>
                          </select>
                        </div>
                      </div>
                      <div class="row mb-2">
                        <div class="col-12 text-end"><button type="submit" class="btn btn-warning">Add Product</button></div>
                      </div>
                    </form>

                  </div>
                </div>
                <!-- End Add Product Form and Category List -->
                <h4 class="text-warning mt-5 mb-3">Product List</h4>
                <!-- Product List Table -->
                <div class="row g-0 text-center mt-2">
                    <div class="col-1"><span class="fs-4">ID</span></div>
                    <div class="col-2"><span class="fs-4">Name</span></div>
                    <div class="col-4"><span class="fs-4">Info</span></div>
                    <div class="col-3"><span class="fs-4">Image</span></div>
                    <div class="col-1"><span class="fs-4">Price</span></div>
                    <div class="col-1"><span class="fs-4">Delete</span></div>
                </div>
                <%
                try {
                    cn.tm.dao.ProductDao productDao = new cn.tm.dao.ProductDao(cn.tm.connection.DbCon.getConnection());
                    java.util.List<cn.tm.model.Product> products = productDao.getAllProducts();
                    for (cn.tm.model.Product p : products) {
                %>
                <div class="row g-0 text-center align-items-center" style="border-top-width: 1px;border-top-style: solid;">
                    <div class="col-1"><span class="fs-6"><%=p.getPid()%></span></div>
                    <div class="col-2"><span class="fs-6"><%=p.getPname()%></span></div>
                    <div class="col-4"><span class="fs-6"><%=p.getPinfo()%></span></div>
                    <div class="col-3"><img class="img-fluid" src="<%=p.getPimg()%>" style="max-width:80px;max-height:80px;border-radius:8px;box-shadow:0 0 8px #000;"/></div>
                    <div class="col-1"><span class="fs-6"><%=p.getPrate()%></span></div>
                    <div class="col-1">
                      <form action="delete-product" method="post" style="display:inline;">
                        <input type="hidden" name="pid" value="<%=p.getPid()%>" />
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Delete this product?');">Delete</button>
                      </form>
                    </div>
                </div>
                <%  }
                } catch(Exception e) { %>
                <div class='text-danger'>Error loading products</div>
                <% }
                %>
                <!-- End Product List Table -->
            </div>
        </section>
    </main>



<%@include file="fix/scripts.jsp" %>
</body>
</html>
