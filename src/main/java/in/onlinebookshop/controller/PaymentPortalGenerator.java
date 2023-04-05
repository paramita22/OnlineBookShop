package in.onlinebookshop.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentPortalGenerator
 */
@WebServlet("/ppg")
public class PaymentPortalGenerator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Connection conn=null;
       Statement st=null;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
			if(conn!=null) {
				System.out.println("Connection success");
			}
			else {
				System.out.println("Connection failure");
			}
		String sid=request.getParameter("userid");
		PreparedStatement pstmt=conn.prepareStatement("insert into payment_details values(?,?,?,?,?,?,?,?)");
				pstmt.setInt(1, Integer.parseInt(request.getParameter("accid")));
				pstmt.setString(2, request.getParameter("payment_mode"));
				pstmt.setString(3, request.getParameter("merchant_bank"));
				pstmt.setString(4, request.getParameter("pin_cvv"));
				pstmt.setString(5, request.getParameter("amount_paid"));
				pstmt.setString(6, request.getParameter("amount_received"));
				pstmt.setString(7, request.getParameter("wallet"));
				pstmt.setString(8, request.getParameter("userid"));
				pstmt.executeUpdate();
	
				PreparedStatement pstmt1=conn.prepareStatement("insert into book_purchase values(?,?,?,?,?,?)");
				pstmt1.setInt(1, Integer.parseInt(request.getParameter("ISBN")));
				pstmt1.setInt(2, Integer.parseInt(request.getParameter("userid")));
				pstmt1.setInt(3, Integer.parseInt(request.getParameter("book_name")));
				pstmt1.setInt(4, Integer.parseInt(request.getParameter("author_name")));
				pstmt1.setInt(5, Integer.parseInt(request.getParameter("selling_price")));
				pstmt1.setInt(6, Integer.parseInt(request.getParameter("date_purchase")));
				pstmt1.executeUpdate();
				int userid=0;
				ResultSet rs=st.executeQuery("select user_email from users where users="+userid );
				while(rs.next()) {
				pstmt1.setString(1, rs.getString(1));
				}
			
				response.sendRedirect("payment_receipt.jsp");
				} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
	
	


