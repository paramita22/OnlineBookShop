package in.onlinebookshop.main;

public class CheckCatalogue {

	public static void main(String[] args) {
		Connection connection = null;
		Statement stmt = null;
		ResultSet resultSet = null;

		try {

			// Getting the database connection using utility code
			connection = JdbcUtil.getJdbcConnection();

			stmt = connection.createStatement();

			connection.setAutoCommit(false);

			stmt.executeUpdate("insert into `book_purchase`(ISBN,book_name,author_name,selling_price) values(?,?,?,?)");

			CheckCatalogue cc = connection.setCheckCatalogue();
			stmt.executeUpdate("insert into book_purchase(ISBN,book_name,author_name,selling_price)(?,?,?,?)");
			System.out.println("Opps' something went wrong need to rollback....");
			connection.rollback(sp);

			connection.commit();

		} catch (SQLException e) {
			// handling logic of exception related to SQLException
			e.printStackTrace();
		} catch (IOException e) {
			// hanlding logic of exception related to FileOperation
			e.printStackTrace();
		} catch (Exception e) {
			// hanlding logic of exception related to common problem
			e.printStackTrace();
		} finally {
			// closing the resource
			try {
				JdbcUtil.closeConnection(resultSet, stmt, connection);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

	}

}
