package in.onlinebookshop.main;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddNewBooks {
		
	       Connection conn=null;
	       Statement st=null;
	       PreparedStatement pstmt=null;
	       ResultSet rs=null;
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
				if(conn!=null) {
					System.out.println("Connection success");
				}
				else {
					System.out.println("Connection failure");
				}
				
				pstmt=conn.prepareStatement("insert into new_books values(?,?,?,?,?,?,?,?,?)");
				pstmt.setString(1, request.getParameter("nbid"));
				pstmt.setString(2, request.getParameter("book_name"));
				pstmt.setString(3, request.getParameter("author_name"));
				pstmt.setString(4, request.getParameter("subject"));
				pstmt.setString(5, request.getParameter("hardcover_copies"));
				pstmt.setString(6, request.getParameter("online_versions"));
				pstmt.setString(7, request.getParameter("cost"));
				pstmt.setString(1, request.getParameter("userid"));
				pstmt.executeUpdate();
				
				response.setContentType("image/jpg");

				ServletOutputStream os = response.getOutputStream();

				String path = getServletContext().getRealPath("img/sb3.png");
				System.out.println(path);
				
				File file = new File(path);
				FileInputStream fis = new FileInputStream(file);

				
				byte[] b = new byte[(int) file.length()];
				fis.read(b);// reading and placing the image data into byte array

				os.write(b);// writing the data as the response from byte array
				os.flush();

				fis.close();
				os.close();

			}
			catch(Exception e) {
				e.printStackTrace();
			}

}
		private ServletRequest getServletContext() {
			// TODO Auto-generated method stub
			return null;
		}
}
