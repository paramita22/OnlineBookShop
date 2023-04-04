package in.onlinebookshop.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import in.ineuron.util.BookUtil;

public class BookDaoImpl implements IBookDao {

	Connection connection = null;

	@Override
	public String save(Book book) {
		
		String sqlInsertQuery1 = "insert into `new_books`(`nbid`,`book_name`,`author_name`,`hardcover_copies`,`online_versions`,`cost`,`book_cover`) values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		String status = null;
		try {
			connection = JdbcUtil.getJdbcConnection();
			if (connection != null)
				pstmt = connection.prepareStatement(sqlInsertQuery1);
			if (pstmt != null) {
				pstmt.setInt(1, book.getNbid());
				pstmt.setString(2, book.getBookName());
				pstmt.setString(3, book.getAuthorName());
				pstmt.setString(4, book.getHardcover_copies());
				pstmt.setString(5, book.getOnlineVersions());
				pstmt.setString(6, book.getCost());
			}
			if (pstmt != null) {
				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					status = "success";
				} else {
					status = "failure";
				}
			}
			
			String sqlInsertQuery2 = "insert into `old_books`(`old_bookid`,`old_book_name`,`authorname`,`hardcover`,`online_version`,`other_formats`,`cost`,`donor_id`,`book_cover`) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt1 = null;
		String status = null;
		try {
			connection = JdbcUtil.getJdbcConnection();
			if (connection != null)
				pstmt1 = connection.prepareStatement(sqlInsertQuery1);
			if (pstmt1 != null) {
				pstmt1.setInt(1, book.getOldBookId());
				pstmt1.setString(2, book.getUserName());
				pstmt1.setString(3, book.getAuthorName());
				pstmt1.setString(4, book.getHardcover_copies());
				pstmt1.setString(5, book.getOnlineVersions());
				pstmt1.setString(6, book.getOtherFormats());
				pstmt1.setString(7, book.getCost());
				pstmt1.setString(8, book.getDonorId());
			}
			if (pstmt1 != null) {
				int rowAffected = pstmt1.executeUpdate();
				if (rowAffected == 1) {
					status = "success";
				} else {
					status = "failure";
				}
			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
			status = "failure";
		}
		return status;
	}

	@Override
	public Book findById(Integer sid) {

		String sqlSelectQuery = "select nbid,book_name,author_name,hardcover_copies,online_versions,cost,book_cover from new_books where nbid=?";
		PreparedStatement pstmt = null;
		Book book = null;
		try {
			connection = JdbcUtil.getJdbcConnection();
			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);
			if (pstmt != null) {
				pstmt.setInt(1, sid);
			}
			if (pstmt != null) {
				ResultSet resultSet = pstmt.executeQuery();

				if (resultSet.next()) {
					// copy the reusltSet data to StudentDTO and trasfer to the view
					book = new Book();

					book.setNbid(resultSet.getInt(1));
					book.setBookName(resultSet.getString(2));
					book.setAuthorName(resultSet.getString(3));
					book.setHardcover_copies(resultSet.getString(4));
					book.setOnlineVersions(resultSet.getString(5));
					book.setCost(resultSet.getString());
					
				}
			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public String updateById(Student student) {
		String sqlUpdateQuery1 = "update new_books set nbid=?,book_name=?,author_name=?,hardcover_copies=?,online_versions=?,cost=? where nbid = ?";
		PreparedStatement pstmt = null;
		String status = null;
		try {
			connection = JdbcUtil.getJdbcConnection();
			if (connection != null)
				pstmt = connection.prepareStatement(sqlUpdateQuery);
			if (pstmt != null) {
				book.setNbid(resultSet.getInt(1));
					book.setBookName(resultSet.getString(2));
					book.setAuthorName(resultSet.getString(3));
					book.setHardcover_copies(resultSet.getString(4));
					book.setOnlineVersions(resultSet.getString(5));
					book.setCost(resultSet.getString());
				
			}
			if (pstmt != null) {
				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					status = "success";
				} else {
					status = "failure";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
			status = "failure";
		}
		return status;
	}

	@Override
	public String deleteById(Integer nbid {

		String sqlDeleteQuery = "delete from new_books where nbid = ? ";
		PreparedStatement pstmt = null;
		String status = null;
		try {
			Book book = findById(nbid);
			if (student != null) {

				connection = JdbcUtil.getJdbcConnection();
				if (connection != null)
					pstmt = connection.prepareStatement(sqlDeleteQuery);
				if (pstmt != null)
					pstmt.setInt(1, sid);

				if (pstmt != null) {
					int rowAffected = pstmt.executeUpdate();
					if (rowAffected == 1)
						status = "success";
				}
			} else {
				status = "not available";
			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
			status = "failure";
		}
		return status;
	}

}
