package in.onlinebookshop.dao;

import in.onlinebookshop.dto.Book;

public interface IBookDao {
	String save(Book book);// Creating a record
	String findById(int nbid);// Reading a record

	String updateById(Book book);// Updating a record
	String deleteById(int nbid);
	// Deleting a record

	
	
	
}
