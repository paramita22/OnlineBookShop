package in.onlinebookshop.main;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCconnection {

	public static void main(String[] args) throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
			if(conn!=null) {
				System.out.println("Connection success");
			}
			else {
				System.out.println("Connection failure");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
