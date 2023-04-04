<%	String user_email = request.getParameter("user_email");
String contact_no = request.getParameter("contact_no");

HttpSession session1 = request.getSession();
session1.setAttribute("user_email", user_email);
session1.setAttribute("contact_no", contact_no);%>
<%@page import="java.sql.*" %>
<%@page import="in.onlinebookshop.main.JDBCconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registerreceipt@OnlineBookShop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<script>
                    var x1 = document.getElementByid("ufname").innerHTML;
                    var x2 = document.getElementByid("ulname").innerHTML;
             
                    var x5 = document.getElementById("ucontact").innerHTML;
                    var x6 = document.getElementByid("uaddress").innerHTML;
                    function printReceipt() {
                        document.getElementById("d1").innerHTML = document.write("x1");
                        document.getElementById("d2").innerHTML = document.write("x2");
                        document.getElementById("d3").innerHTML = x3;

                        document.getElementById("d5").innerHTML = x5;
                    var x3 = document.getElementById("uemail").innerHTML;
           document.getElementById("d6").innerHTML = x6;
                    }

                </script>
                  
                    <div class="panel panel-primary">
                        <div class="panel-heading"><h2><b>Registration Receipt</b></h2></div>
                        <div class="panel-body">
                           
		<%
		Connection conn = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
		int userid=0;
	Statement st=conn.createStatement();
		ResultSet rs1=st.executeQuery("select max(userid) from `oninebookshop`.`users`");
		while(rs1.next()) {
			userid=rs1.getInt(1);
		}
		
		userid+=1;
		ResultSet rs2=st.executeQuery("select * from `onlinebookshop`.`users` where userid="+userid);
		while(rs2.next()) {
		out.println("User First Name:"+rs2.getString(2));
		out.println("User Last Name:"+rs2.getString(3));
		out.println("User Email:"+rs2.getString(4));
		out.println("User Contact No.:"+rs2.getString(6));
		out.println("User Address:"+rs2.getString(7));
		}
    
		%></div>
		
                        <div class="panel-footer"><a href="UserSignIn.jsp"><input type="button" class="btn btn-primary" value="Proceed to Login" /></a></div>
                    </div>
              
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>