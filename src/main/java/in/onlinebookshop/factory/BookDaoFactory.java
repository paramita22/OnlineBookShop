package in.onlinebookshop.factory;

import in.onlinebookshop.dao.IBookDao;
import in.onlinebookshop.dao.BookDaoImpl;

public class BookDaoFactory {

	private static IBookDao bookDao = null;

	private BookDaoFactory() {
	}

	public static  IBookDao getBookDao() {
		if (bookDao == null)
			bookDao = new BookDaoImpl();

		return bookDao;
	}
}
