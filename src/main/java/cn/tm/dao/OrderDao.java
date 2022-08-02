package cn.tm.dao;

import java.sql.*;
import java.util.*;

import cn.tm.model.Order;
import cn.tm.model.Product;
import cn.tm.dao.*;

public class OrderDao {

	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public OrderDao(Connection con){
	    this.con=con;
	}
	
	public boolean insertOrder(Order model){
		
		boolean result=false;
		try {
			
			query="insert into orders ( pid, uid, quantity, odate) values(?,?,?,?)";
			pst=this.con.prepareStatement(query); 
			pst.setInt(1, model.getPid());
			pst.setInt(2, model.getUid());
			pst.setInt(3, model.getQuantity());
			pst.setString(4, model.getDate());
			
			pst.executeUpdate();
			result = true;

		}catch(Exception e){
		    e.printStackTrace();
		}
		
		return result;
	}
	
	
	public List<Order> userOrder(int uid) {
		List<Order> list = new ArrayList<Order>();
		try {
			query= "select * from orders where uid= ? ";
			System.out.println(uid);
			pst = this.con.prepareStatement(query);
			pst.setInt(1, uid); 
			rs = pst.executeQuery();
			
			
			while(rs.next()) {
				Order order = new Order();
				ProductDao ProductDao = new ProductDao(this.con);
				int pid =rs.getInt("pid");
				Product product = ProductDao.getSingleProduct (pid); 
				order.setOrderId(rs.getInt("oid"));
				order.setPid(pid);
				order.setPname(product.getPname());
				order.setPrate(product.getPrate()*rs.getInt("quantity"));
				order.setQuantity(rs.getInt("quantity"));
				order.setDate(rs.getString("odate"));
				list.add(order);
				
				}
			
			
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		
		return list;
		
	}
	
}
