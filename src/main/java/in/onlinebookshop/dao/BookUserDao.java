package in.onlinebookshop.dao;

import java.io.IOException;
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
 * Servlet implementation class BookUserDao
 */
@WebServlet("/test2")
public class BookUserDao extends HttpServlet {
	Connection conn=null;
	PreparedStatement pst1=null;
	Statement st=null;
	ResultSet rs=null;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookUserDao() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ineuron","root","pp10");
				if(conn!=null) {
					pst1=conn.prepareStatement("insert into onlinebookshop values()");
				}
			
			}
		catch(Exception e) {
			
		}

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
