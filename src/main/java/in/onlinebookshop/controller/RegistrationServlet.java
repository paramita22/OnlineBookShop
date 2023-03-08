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
		try {
		Connection conn = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:Mysql://localhost:3306/onlinebookshop","root","pp10");
			int userid=0;
			Statement st=conn.createStatement();
			ResultSet rs1=st.executeQuery("select max(userid) from `oninebookshop`.`users`");
			while(rs1.next()) {
				userid=rs1.getInt(1);
			}
			
			userid+=1;
			
				PreparedStatement pstmt=conn.prepareStatement("insert into `onlinebookshop`.`users`(user_fname,user_lname,user_email,user_password,contact_no,address) values(?,?,?,?,?,?) where userid="+userid);
				pstmt.setInt(1, userid);
				pstmt.setString(2, user_fname);
				pstmt.setString(3, user_lname);
				pstmt.setString(4, user_email);
				pstmt.setString(5, user_password);
				pstmt.setString(6, contact_no);
				pstmt.setString(7, address);
				pstmt.executeUpdate();
			
			
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.println("<html><head><title></title></head>");
		out.println("<body>");
		out.println("<font color='red'>");
		out.println("<center><h2>Online Book Shop</h2><br/><h4>Registration Receipt</h4></center>");
		out.println("</font><center>");
		out.println("<table border='2'>");
		out.println("<tr><td>Registration Status:</td><td>Registered Successfully</td></tr>");
		out.println("</center></table>");
		out.println("</body>");
		out.println("</html>");			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		RequestDispatcher rd1=request.getRequestDispatcher("RegisterReceipt.jsp");
		rd1.forward(request, response);
	}
}
