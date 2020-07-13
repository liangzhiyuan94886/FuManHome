package ll.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import ll.javabean.LL_User;

import ll.util.DBConnection;

public class LoginCheck { 
	
		
	//------------------------------------------------------------------------------------------
	public  boolean  insertUser(String userName,String userPassword,String mail,String tel,String sex,String city){
		boolean flag = false;
		try{
			Connection conn = DBConnection.MyDBConnection();
			System.out.println("数据库连接成功");
			
			String sql = "insert into User_login values(?,?,?,?,?,?)";
			PreparedStatement ps  = conn.prepareStatement(sql);
			ps.setString(1,userName);
			ps.setString(2,userPassword);
			ps.setString(3,mail);
			ps.setString(4,tel);
			ps.setString(5,sex);
			ps.setString(6,city);
			int n = ps.executeUpdate();
			if (n > 0) {
				flag = true;
		}
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	
	//-------------------------------------------------------------------------------------------
	//public static void main(String[] args) {
	//	UpdatePassword("456","qq");
		
	//}
	public static boolean MyLoginCheck (String username,String userpw) {
		boolean flag=false;
		Connection conn = DBConnection.MyDBConnection();
		String sql = "select * from User_login where userName='"+username+"' and userPassword='"+userpw+"' ";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				flag = true;
			}
			conn.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return flag;
	}
//---------------------------------------------------------------------------
	public static void queryAllUser() {
		ArrayList<LL_User> lst = new ArrayList<LL_User>();
		try {
			Connection con = DBConnection.MyDBConnection();
			String sql = "select * from User_login";
			Statement st = con.createStatement();
			// 查询语句返回的是一个结果集ResultSet
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				LL_User eu = new LL_User();

				eu.setUserId(rs.getInt(1));
				eu.setUserName(rs.getString(2));
				eu.setUserPassword(rs.getString(3));
				lst.add(eu);

			}
			System.out.println(lst.size());
			System.out.println(lst.get(1).getUserName());
			con.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public boolean  queryUserByNameAndPW(String userName,String userPassword){
		boolean flag = false;
		Connection con = DBConnection.MyDBConnection();
		String sql = "select * from User_login where userName='"+userName+"' and userPassword='"+userPassword+"' ";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				flag = true;
			}
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
//------------------------------------------------------------------------	
	public LL_User  queryUserByName(String userName){
		Connection con = DBConnection.MyDBConnection();
		String sql = "select * from User_login where userName=?";
		LL_User user = null;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,userName);
			ResultSet rs = ps.executeQuery();
			rs.next();
			user = new LL_User();
			user.setUserName(rs.getString(2));
			user.setMail(rs.getString(4));
			user.setTel(rs.getString(5));
			user.setSex(rs.getString(6));
			user.setCity(rs.getString(7));
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(user.getUserName());
		return user;
	}
	
	//------------------------------------------------------
	public static boolean  UpdateUserInfo(String mail,String tel,String sex,String city,String userName){
		boolean flag = false;
		Connection con = DBConnection.MyDBConnection();
		String sql = "update User_login set mail=?,tel=?,sex=?,city=? where userName=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, mail);
			ps.setString(2, tel);
			ps.setString(3,sex );
			ps.setString(4,city );
			ps.setString(5, userName);
			int a = ps.executeUpdate();
			if(a>0){
				flag = true;
			}
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
//-------------------------------------
	public static boolean  UpdatePassword(String userPassword,String userName){
		boolean flag = false;
		Connection con = DBConnection.MyDBConnection();
		String sql = "update User_login set userPassword=? where userName=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userPassword);
			ps.setString(2, userName);
			int a = ps.executeUpdate();
			if(a>0){
				flag = true;
			}
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;	
	}
	//-------------------------------------------------
	public static boolean  DeleteUserInfo(String userName,String userPassword){
		boolean flag = false;
		Connection con = DBConnection.MyDBConnection();
		String sql = "delete from User_login where userName='"+userName+"' and userPassword='"+userPassword+"' ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			int a = ps.executeUpdate();
			if(a>0){
				flag = true;
			}
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
}
