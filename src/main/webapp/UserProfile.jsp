<%@page import="java.sql.*"%>
<%	String user_email = request.getParameter("user_email");
String contact_no = request.getParameter("contact_no");

HttpSession session1 = request.getSession();
session1.setAttribute("user_email", user_email);
session1.setAttribute("contact_no", contact_no);%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1 ">
<title>UserProfile # onlinebookshop</title>
<style>
	.container-fluid{
		height:720px;
		width:auto;
		background-image:url("img/bookSwap.png");
	}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  <h2><b>Hello User[ Click Me to See Magic]</b></h2>
</button>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Choose Your Arena</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <b>Check Out Your Passion</b>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<div class="grid text-center" style="--bs-rows: 3; --bs-columns: 3;">
    <div class="card" style="width: 18rem;" style="margin-top:20px;">
  <img src="img/sb3.jpeg" class="card-img-top" alt="profile_pic">
  <div class="card-body">
    <p class="card-text">Put Your Profile Picture here</p>
  </div>
</div>
  <div class="g-start-2" style="grid-row: 2"><img src="img/en3.jpeg" alt='Love of Books'/><</div>
<div style="min-height: 50px;float:right;background-color:yellow;">
	
  <div class="g-start-3" style="grid-row: 3">
  <div class="card" style="width: 18rem;" style="margin-top:0px;">

<p>
  <button class="btn btn-info" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Check If You are on The Right Page
  </button>
</p>

      <%
      try {
    	  Class.forName("com.mysql.cj.jdbc.Driver");
    	  	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
    	  	int userid=0;
      	Statement st=conn.createStatement();
      	String sql1="select max(userid)from users";
      	ResultSet rs1=st.executeQuery(sql1);
      	while(rs1.next()){
      		userid=rs1.getInt(1);
      		out.println("User ID:"+userid);
      	}
  		String sql2="select * from users where userid=";
      	ResultSet rs2=st.executeQuery(sql2+userid);
      	while(rs2.next()){%>
      		<p><%out.println("User Name:"+rs2.getString(2)+" "+rs2.getString(3));%></p>
      	
      		<p><%out.println("Email:"+rs2.getString(4));%></p>
      		<p><%out.println("Contact_no.:"+rs2.getString(6));%></p>
      		<p><%out.println("Address"+rs2.getString(7));%></p>
      	<%}%>
      	<%}catch(Exception e){
      	e.printStackTrace();}%>

    </div>
  </div>
</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>