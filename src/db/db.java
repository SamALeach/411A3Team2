package db;
import java.sql.*;

public class db {
	public static String dbClassName = "com.mysql.cj.jdbc.Driver";
	public static String dbUrl = "jdbc:mysql://localhost:3306/travel?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone = GMT";
	public static String dbUser = "root";
	public static String dbPwd = "liumingxuan818";
	public static String second = null;
	public static Connection conn = null;
		
		public db() {
			try {
				if (conn == null) {
					Class.forName(dbClassName).newInstance();
					conn = DriverManager.getConnection(dbUrl, dbUser, dbPwd);
				}
				
					return;
			} catch (Exception ee) {
				ee.printStackTrace();
				System.out.println("Database connection exception");
			}

		}
		public static ResultSet executeQuery(String sql) {
			try {
				if(conn==null)
				new db();
				return conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE).executeQuery(sql);
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			} finally {
			}
		}
		public static int executeUpdate(String sql) {
			
			try {
				if(conn==null)
					new db();
				return conn.createStatement().executeUpdate(sql);
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				return -1;
			} finally {
			}
		}
		
		public static void close() {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				conn = null;
			}
		}
}
	


