package in.onlinebookshop.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookCatalogue
 */
@WebServlet("/obs1")
public class BookCatalogue_new extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nbid=request.getParameter("nbid");
		String book_name=request.getParameter("book_name");
		String author_name=request.getParameter("author_name");
		String subject=request.getParameter("subject");
		String hardcover_copieso=request.getParameter("hardcover_copies");
		String online_xersions=request.getParameter("online_versions");
		String cost=request.getParameter("cost");
		String path = request.getParameter("book_cover");
		Connection conn = null;
		String hardcover_copies = null;
		String online_versions = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
			int userid=0;
			Statement st=conn.createStatement();
			ResultSet rs1=st.executeQuery("select max(nbid) from `oninebookshop`.`new_books`");
			while(rs1.next()) {
				userid=rs1.getInt(1);
			}
			
			nbid+=1;
			
				PreparedStatement pstmt=conn.prepareStatement("insert into `onlinebookshop`.`users`(nbid,book_name,author_name,subject,hardcover_copies,online_versions,cost,book_cover) values(?,?,?,?,?,?,?,?) where nbid="+nbid);
				
				pstmt.setString(2, book_name);
				pstmt.setString(3, author_name);
				pstmt.setString(4, subject);
				pstmt.setString(5, hardcover_copies);
				pstmt.setString(6, online_versions);
				pstmt.setString(7, cost);
		
				FileInputStream fis = new FileInputStream(path);
				pstmt.setBinaryStream(9,fis);
				pstmt.executeUpdate();
			
		}catch(Exception e) {
				e.printStackTrace();
		}
		response.setContentType("text/html");
	
		PrintWriter out=response.getWriter();
		
		out.println("<html><head><title></title></head>");
		out.println("<body bgcolor='lightblue'>");
		out.println("<font color='red'>");
		out.println("<center><h2>Online Book Shop</h2><br/><h4>Registration Receipt</h4></center>");
		out.println("</font><center>");
		out.println("<table border='2' width='400' height='400' cell-spacing='10' cell-padding='10'>");
		out.println("<tr><td>Book Name:</td><td>"+book_name+"</td></tr>");
		out.println("<tr><td>Author Name</td><td>"+author_name+"</td></tr>");
		out.println("<tr><td>Hardcover_Copies:</td><td>"+hardcover_copies+"</td></tr>");
		out.println("<tr><td>Online Versions:</td><td>"+online_versions+"</td></tr>");
		out.println("<tr><td>Cost:</td><td>"+cost+"</td></tr>");
		path = getServletContext().getRealPath("images/hs2.jpg");
		System.out.println(path);
		
		File file = new File(path);
		FileInputStream fis = new FileInputStream(file);

		
		byte[] b = new byte[(int) file.length()];
		fis.read(b);// reading and placing the image data into byte array

		PrintWriter os = null;
		os.write(new String(b));// writing the data as the response from byte array
		os.flush();
		

		fis.close();
		os.close();
		out.println("<tr><td>BookCatalogueInsert Status:</td><td>Inserted Successfully</td></tr>");
		out.println("<tr><td><a href='ThankYou.jsp'><input type='submit' value='Logout'/></a></td><td><a href='UserSignIn.jsp'><input type='submit' value='Proceed to Login'/></a></td></tr>");
		out.println("</center></table>");
		out.println("</body>");
		out.println("</html>");			
	
		out.close();

	}
}
