package cn.tm.servlet;

import cn.tm.connection.DbCon;
import cn.tm.dao.ProductDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

@WebServlet("/delete-product")
public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pidStr = request.getParameter("pid");
        try {
            int pid = Integer.parseInt(pidStr);
            Connection con = DbCon.getConnection();
            ProductDao productDao = new ProductDao(con);
            boolean result = productDao.deleteProduct(pid);
            if (result) {
                response.sendRedirect("ad-add_product.jsp?deleted=1");
            } else {
                response.sendRedirect("ad-add_product.jsp?error=delete");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ad-add_product.jsp?error=exception");
        }
    }
}

