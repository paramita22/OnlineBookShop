package in.onlinebookshop.dao;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import in.onlinebookshop.util.BookUtil;
import in.onlinebookshop.dto.Book;

public class BookDaoImpl implements IBookDao {

	Connection connection = null;
	String status1="";
	
	@Override
	public String save(Book book) {
		
		String sqlInsertQuery1 = "insert into `new_books`(`nbid`,`book_name`,`author_name`,`hardcover_copies`,`online_versions`,`cost`,`book_cover`) values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		String status = null;
		try {
			connection = BookUtil.getJdbcConnection();
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
		}
		catch(Exception e) {
			System.out.println(e);
		}
		String sqlInsertQuery2 = "insert into `old_books`(`old_bookid`,`old_book_name`,`authorname`,`hardcover`,`online_version`,`other_formats`,`cost`,`donor_id`,`book_cover`) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt1 = null;
		String status1 = null;
		try {
			connection = BookUtil.getJdbcConnection();
			if (connection != null)
				pstmt1 = connection.prepareStatement(sqlInsertQuery1);
			if (pstmt1 != null) {
				pstmt1.setInt(1, book.getOldBookId());
				pstmt1.setString(2, book.getBookName());
				pstmt1.setString(3, book.getAuthorName());
				pstmt1.setString(4, book.getHardcover_copies());
				pstmt1.setString(5, book.getOnlineVersions());
				pstmt1.setString(6, book.getOtherFormats());
				pstmt1.setString(7, book.getCost());
				pstmt1.setString(8, book.getDonor_id());
			}
			if (pstmt1 != null) {
				int rowAffected = pstmt1.executeUpdate();
				if (rowAffected == 1) {
					status1 = "success";
				} else {
					status1 = "failure";
				}
			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
			status1 = "failure";
		}
		return status1;
	}
		
	public String findById(int nbid) {

		String sqlSelectQuery = "select nbid,book_name,author_name,hardcover_copies,online_versions,cost,book_cover from new_books where nbid=?";
		PreparedStatement pstmt = null;
		Book book = null;
		try {
			connection = BookUtil.getJdbcConnection();
			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);
			if (pstmt != null) {
				pstmt.setInt(1, nbid);
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
					book.setOnlineversions(resultSet.getString(5));
					book.setCost(resultSet.getString(6));
					
				}
			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		String status = null;
		return status;
	}

	@Override
	public String updateById(Book book) {
		String sqlUpdateQuery1 = "update new_books set nbid=?,book_name=?,author_name=?,hardcover_copies=?,online_versions=?,cost=? where nbid = ?";
		PreparedStatement pstmt = null;
		
		String status = null;
		try {
			connection = BookUtil.getJdbcConnection();
			if (connection != null)
				pstmt = connection.prepareStatement(sqlUpdateQuery1);
			if (pstmt != null) {
					ResultSet resultSet = null;
					book.setNbid(resultSet.getInt(1));
					book.setBookName(resultSet.getString(2));
					book.setAuthorName(resultSet.getString(3));
					book.setHardcover_copies(resultSet.getString(4));
					book.setOnlineversions(resultSet.getString(5));
					book.setCost(resultSet.getString(6));
				
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
	public String deleteById(int nbid) {

		String sqlDeleteQuery = "delete from new_books where nbid = ? ";
		PreparedStatement pstmt = null;
		String status = null;
		try {
			String bk = findById(nbid);
			if (bk != null) {

				connection = BookUtil.getJdbcConnection();
				if (connection != null)
					pstmt = connection.prepareStatement(sqlDeleteQuery);
				if (pstmt != null)
					pstmt.setInt(1, nbid);

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
