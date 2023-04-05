package in.onlinebookshop.main;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddOldBooks {

		  Connection conn=null;
	       Statement st=null;
	       PreparedStatement pstmt1=null;
	    
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException{
		
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
				if(conn!=null) {
					System.out.println("Connection success");
				}
				else {
					System.out.println("Connection failure");
				}
				
				pstmt1 = conn.prepareStatement("insert into old_books values(?,?,?,?,?,?,?,?,?)");
				pstmt1.setString(1, request.getParameter("old_bookid"));
				pstmt1.setString(2, request.getParameter("old_book_name"));
				pstmt1.setString(3, request.getParameter("authorname"));
				pstmt1.setString(4, request.getParameter("subject"));
				pstmt1.setString(5, request.getParameter("hardcover"));
				pstmt1.setString(6, request.getParameter("online_version"));
				pstmt1.setString(7, request.getParameter("other_formats"));
				pstmt1.setString(7, request.getParameter("cost"));
				pstmt1.setString(7, request.getParameter("donor_id"));
				pstmt1.setString(1, request.getParameter("userid"));
				pstmt1.executeUpdate();
				
				response.setContentType("image/jpg");

				ServletOutputStream os = response.getOutputStream();

				String path = getServletContext().getRealPath("img/sb1.png");
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
		private ServletRequest getServletContext() {
			// TODO Auto-generated method stub
			return null;
		}

}
