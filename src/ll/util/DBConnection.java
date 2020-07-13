package ll.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.text.Normalizer.Form;

public class DBConnection {
	public static void main(String[] args) {
		
	}
	public  static Connection  MyDBConnection() {
		Connection conn=null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://localhost:1433;databaseName=LL_text";
			conn = DriverManager.getConnection(url, "sa", "123");
			System.out.println("成功连接数据库");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("连接数据库失败");
			e.printStackTrace();
		}
   return conn;
		
	}

}
