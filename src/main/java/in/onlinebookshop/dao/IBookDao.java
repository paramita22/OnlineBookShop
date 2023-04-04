package in.onlinebookshop.dao;

import in.ionlinebookshop.dto.Book;

public interface IBookDao {
	String save(Book book);// Creating a record
	Book findById(int nbid);// Reading a record
	String findById(int old_bookid);
	String updateById(Book book);// Updating a record
	String deleteById(int nbid);
	// Deleting a record
}
