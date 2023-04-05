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
@WebServlet("/obs2")
public class BookCatalogue_old extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String old_bookid=request.getParameter("old_bookid");
		String old_book_name=request.getParameter("old_book_name");
		String authorname=request.getParameter("authorname");
		String subject=request.getParameter("subject");
		String hardcover=request.getParameter("hardcover");
		String online_version=request.getParameter("online_version");
		String other_formats=request.getParameter("other_formats");
		String cost=request.getParameter("cost");
		String donor_id=request.getParameter("donor_id");
		String path = request.getParameter("old_book_cover");
		Connection conn = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
			int userid=0;
			Statement st=conn.createStatement();
			ResultSet rs1=st.executeQuery("select max(nbid) from `oninebookshop`.`old_books`");
			while(rs1.next()) {
				userid=rs1.getInt(1);
			}
			
			int nbid = 1;
			
				PreparedStatement pstmt=conn.prepareStatement("insert into `onlinebookshop`.`users`(old_bookid,old_book_name,authorname,subject,hardcover,online_version,other_formats,cost,donor_id,old_book_cover) values(?,?,?,?,?,?,?,?,?,?) where old_bookidd="+old_bookid);
				
	
				pstmt.setString(2, old_book_name);
				pstmt.setString(3, authorname);
				pstmt.setString(4, subject);
				pstmt.setString(5, hardcover);
				pstmt.setString(6, online_version);
				pstmt.setString(7,other_formats);
				pstmt.setString(7, cost);
				pstmt.setString(8,donor_id);
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
		out.println("<tr><td>Book Name:</td><td>"+old_book_name+"</td></tr>");
		out.println("<tr><td>Author Name</td><td>"+authorname+"</td></tr>");
		out.println("<tr><td>Hardcover_Copies:</td><td>"+hardcover+"</td></tr>");
		out.println("<tr><td>Online Versions:</td><td>"+online_version+"</td></tr>");
		out.println("<tr><td>Other Formats:</td><td>"+other_formats+"</td></tr>");
		out.println("<tr><td>Cost:</td><td>"+cost+"</td></tr>");
		out.println("<tr><td>Donor ID:</td><td>"+donor_id+"</td></tr>");
		path = getServletContext().getRealPath("images/cm11.jpg");
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
		out.println("<tr><td>Registration Status:</td><td>Registered Successfully</td></tr>");
		out.println("<tr><td><a href='ThankYou.jsp'><input type='submit' value='Logout'/></a></td><td><a href='UserSignIn.jsp'><input type='submit' value='Proceed to Login'/></a></td></tr>");
		out.println("</center></table>");
		out.println("</body>");
		out.println("</html>");			
	
		out.close();

	}
}
