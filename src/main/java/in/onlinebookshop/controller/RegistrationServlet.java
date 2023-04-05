package in.onlinebookshop.controller;



import java.io.IOException;

import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/reg")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_fname=request.getParameter("user_fname");
		String user_lname=request.getParameter("user_lname");
		String user_email=request.getParameter("user_email");
		String user_password=request.getParameter("user_password");
		String contact_no=request.getParameter("contact_no");
		String address=request.getParameter("address");
		Connection conn = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
			int userid=0;
			Statement st=conn.createStatement();
			ResultSet rs1=st.executeQuery("select max(userid) from `oninebookshop`.`users`");
			while(rs1.next()) {
				userid=rs1.getInt(1);
			}
			
			userid+=1;
			
				PreparedStatement pstmt=conn.prepareStatement("insert into `onlinebookshop`.`users`(user_fname,user_lname,user_email,user_password,contact_no,address) values(?,?,?,?,?,?) where userid="+userid);
				
				pstmt.setString(2, user_fname);
				pstmt.setString(3, user_lname);
				pstmt.setString(4, user_email);
				pstmt.setString(5, user_password);
				pstmt.setString(6, contact_no);
				pstmt.setString(7, address);
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
		out.println("<tr><td>User First Name:</td><td>"+user_fname+"</td></tr>");
		out.println("<tr><td>User Last Name:</td><td>"+user_lname+"</td></tr>");
		out.println("<tr><td>User Email:</td><td>"+user_email+"</td></tr>");
		out.println("<tr><td>User Contacte:</td><td>"+contact_no+"</td></tr>");
		out.println("<tr><td>User Address:</td><td>"+address+"</td></tr>");
		out.println("<tr><td>Registration Status:</td><td>Registered Successfully</td></tr>");
		out.println("<tr><td><a href='ThankYou.jsp'><input type='submit' value='Logout'/></a></td><td><a href='UserSignIn.jsp'><input type='submit' value='Proceed to Login'/></a></td></tr>");
		out.println("</center></table>");
		out.println("</body>");
		out.println("</html>");			
	
		out.close();
	}
}
