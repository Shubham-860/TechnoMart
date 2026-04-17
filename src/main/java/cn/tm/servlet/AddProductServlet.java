package cn.tm.servlet;

import cn.tm.connection.DbCon;
import cn.tm.dao.ProductDao;
import cn.tm.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;

@WebServlet("/add-product")
@MultipartConfig
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pname = request.getParameter("pname");
        String pinfo = request.getParameter("pinfo");
        String prateStr = request.getParameter("prate");
        String catIdStr = request.getParameter("cat_id");
        double prate = 0;
        int cat_id = 0;
        String imagePath = null;
        try {
            prate = Double.parseDouble(prateStr);
            cat_id = Integer.parseInt(catIdStr);
        } catch (Exception e) {
            response.sendRedirect("ad-add_product.jsp?error=invalid_input");
            return;
        }
        try {
            Part filePart = request.getPart("pimgfile");
            String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
            String uploadPath = request.getServletContext().getRealPath("/assets/img/scenery");
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdirs();
            filePart.write(uploadPath + File.separator + fileName);
            imagePath = "assets/img/scenery/" + fileName;
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ad-add_product.jsp?error=img_upload");
            return;
        }
        try {
            Connection con = DbCon.getConnection();
            ProductDao productDao = new ProductDao(con);
            Product product = new Product();
            product.setPname(pname);
            product.setPinfo(pinfo);
            product.setPimg(imagePath);
            product.setPrate(prate);
            product.setCat_id(cat_id);
            boolean result = productDao.insertProduct(product);
            if (result) {
                response.sendRedirect("ad-add_product.jsp?success=1");
            } else {
                response.sendRedirect("ad-add_product.jsp?error=db");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ad-add_product.jsp?error=exception");
        }
    }
}
