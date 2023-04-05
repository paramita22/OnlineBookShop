package in.onlinebookshop.main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import in.onlinebookshop.util.BookUtil;

public class CheckCatalogue {
	static int nbid=0;
	int old_bookid=0;
	static Connection connection = null;
	static Statement stmt = null;
	ResultSet resultSet = null;

	public static void main(String[] args) {

		try {

			// Getting the database connection using utility code
			connection = BookUtil.getJdbcConnection();

			stmt = connection.createStatement();

			connection.setAutoCommit(false);

			stmt.executeUpdate("insert into `book_purchase`(ISBN,book_name,author_name,selling_price) values(?,?,?,?)");

			CheckCatalogue cc = new CheckCatalogue();
		}catch (SQLException e) {
		// handling logic of exception related to SQLException
		e.printStackTrace();
	} catch (IOException e) {
		// hanlding logic of exception related to FileOperation
		e.printStackTrace();
	} catch (Exception e) {
		// hanlding logic of exception related to common problem
		e.printStackTrace();
	}
	}
			CheckCatalogue() throws SQLException {
				ResultSet rs1=stmt.executeQuery("select from `new_books`(nbid,book_name,author_name,subject,hardcover_copies,online_versions,cost) where nbid="+nbid);
				while(rs1.next()) {
					System.out.print(rs1.getInt(1));
				}
			stmt.executeUpdate("insert into book_purchase(ISBN,book_name,author_name,selling_price)(?,?,?,?)");
			System.out.println("Opps' something went wrong need to rollback....");
			connection.rollback();

			connection.commit();

			// closing the resource
			try {
				BookUtil.closeConnection(resultSet, stmt, connection);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
}

