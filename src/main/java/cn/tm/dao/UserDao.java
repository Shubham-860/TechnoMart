package cn.tm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.tm.model.User;

public class UserDao {

	private Connection con;
	private String query; 
	private PreparedStatement pst;
	private ResultSet rs;
	
	
	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User userLogin(String mail,String pass) {
		User user = null;
		try {
			query = "select * from user where mail=? and pass=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, mail);
			pst.setString(2, pass); 
			rs = pst.executeQuery();
			
			if (rs.next()) {
				user = new User();
				user.setUid(rs.getInt("uid"));
				user.setFname(rs.getString("fname"));
				user.setLname(rs.getString("lname"));
				user.setMail(rs.getString("mail"));
				user.setNumber(rs.getLong("number"));
				user.setAddress(rs.getString("address"));
				user.setPass(rs.getString("pass"));
				System.out.println(rs.getInt("uid")+rs.getString("fname")+rs.getString("lname")+rs.getString("mail")+rs.getLong("number")+rs.getString("address")+rs.getString("pass"));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return user;
	}
	
	
}
