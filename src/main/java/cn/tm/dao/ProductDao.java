package cn.tm.dao;

import cn.tm.model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class ProductDao {

	private Connection con;
	private String query; 
	private PreparedStatement pst;
	private ResultSet rs;
	
	public ProductDao(Connection con) {
		this.con = con;
	}
	
	public List<Product> getAllProducts() {
		
		List<Product>products = new ArrayList<Product>();
		
		try {
			
			query = "SELECT * FROM product";
			pst= this.con.prepareStatement(query);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				Product row = new Product();
				row.setPid(rs.getInt("pid"));
				row.setPname(rs.getString("pname"));
				row.setPinfo(rs.getString("pinfo"));
				row.setPimg(rs.getString("pimg"));
				row.setPrate(rs.getInt("prate"));
				//System.out.println(String.valueOf(rs.getInt("pid"))+rs.getString("pname")+rs.getString("pinfo")+rs.getInt("prate"));
				products.add(row);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return products;
	}
	
	public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
		List<Cart> products = new ArrayList<Cart>();
		
		try {
			
			if(cartList.size()>0) {
				for(Cart item:cartList) {
					query = "SELECT * FROM product WHERE pid=?";
					pst = this.con.prepareStatement(query);
					pst.setInt(1,item.getPid());
					rs = pst.executeQuery();
					while(rs.next())
					{
						Cart row = new Cart();
						row.setPid(rs.getInt("pid"));
						row.setPname(rs.getString("pname"));
						row.setCat_id(rs.getInt("cat_id"));
						row.setPimg(rs.getString("pimg"));
						row.setPrate(rs.getDouble("prate")*item.getQuantity());
						row.setQuantity(item.getQuantity());
						
						products.add(row);
						
					}
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		
		return products;
		
	}
	
	
	public double getTotalCartPrice(ArrayList<Cart>cartList) {
		
		double sum = 0;
		
		try {
				if (cartList.size()>0) {
					for(Cart item : cartList) {
						query = "SELECT prate FROM product WHERE pid = ?";
						pst = this.con.prepareStatement(query);
						pst.setInt(1,item.getPid());
						rs = pst.executeQuery();
						while (rs.next()) {
							sum+=rs.getDouble("prate")*item.getQuantity();
						}
								
					}
				}
			
			
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		
		
		return sum;
	}
	
	
	public Product getSingleProduct(int pid	) {
		Product row = null;
		try {
			query="select * from product where pid=?";
			pst=this.con.prepareStatement(query);
			pst.setInt(1, pid);
	
			rs = pst.executeQuery(query);
			
			while (rs.next()) {
				row = new Product();
				row.setPid(rs.getInt("pid"));
				row.setPname(rs.getString("pname"));
				row.setPrate(rs.getDouble("prate"));
				row.setPimg(rs.getString("pimg"));
				System.out.println("get paroduct");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		
		return row;
	}
}
