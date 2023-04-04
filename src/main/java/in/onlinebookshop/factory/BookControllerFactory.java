package in.onlinebookshop.factory;

import in.onlinebookshop.controller.IStudentController;
import in.onlinebookshop.controller.StudentControllerImpl;

public class BookControllerFactory {

	private static IBookController studentController = null;

	private BookControllerFactory() {

	}
	public static IBookController getBookController() {

		if (bookController == null)
			bookController = new BookControllerImpl();

		return bookController;

	}

}
