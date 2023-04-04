<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%	String user_email = request.getParameter("user_email");
String contact_no = request.getParameter("contact_no");

HttpSession session1 = request.getSession();
session1.setAttribute("user_email", user_email);
session1.setAttribute("contact_no", contact_no);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentPortal  # onlinebookshop</title>
<style>
.container-fluid{
			height:780px;
			width:auto;
			background-color:beige;
			}
			ul{
			
			
			}
			li{
			background-color:#ffffff;
			color:#ccccff;
			}
			.dropdown{
        width: 300px;
        height: 150px;
        background-color: blue;
        color: #000000;
        padding: 16px;
        font-size: 12px;
        border: none;
        position: relative;
        display: inline-block;
    }
    .dropdown-menu{
        display: none;
     
        position: absolute;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(128,0,128,2.5);
        z-index: 1;
    }

    .dropdown-item{
        color: black;
        padding: 12px 16px;
        display: block;
    }

        .dropdown-item:hover {
            background-color: aqua;
        }

    .dropdown:hover.dropdown-menu {
        display: block;
    }
			
input{
height:50px;
width:600px;
background-color:#ffffcc;
box-shadow:10px 10px 5px -5px rgba(0,0,0,1.5);

}
</style>
</head>
<body bgcolor="grey">
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
	<ul class="nav nav-pills nav-fill gap-2 p-1 small bg-primary rounded-5 shadow-sm" id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);border-radius:25px;">
  <li class="nav-item" role="presentation">
    <button class="nav-link active rounded-5" id="home-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">Search for New Book ISBN/Old Book ISBN</button>
    <!-- Example split danger button -->
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link rounded-5" id="profile-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Payment Mode</button>
    <!-- Example split danger button -->

  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link rounded-5" id="contact-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Enter Payment Details</button>
    <!-- Example split danger button -->

  </li>
</ul>
<div class="row">
  <div class="col-sm-3" style="position:relative;">
<form method="post" action="./ppg">
<div class="form-group"><h4>Enter Username:</h4><div class="form-control"><input type="email" placeholder="enter registered emailid" name="user_email" required/></div></div>
<div class="form-group"><h4>Enter password:</h4><div class="form-control"><input type="password" placeholder="enter password" name="user_password" required/></div></div>
<div class="form-group"><h4>Enter ISBN</h4><div class="form-control"><input type="int" placeholder="10 digit ISBN" name="ISBN" required/></div></div>
<div class="form-group"><h4>Choose Payment Mode:</h4><div class="form-control"><input type="text" placeholder="enter payment_mode" name="user_email" required/></div></div>

<div class="form-group"><input type="submit" value="Submit"></div>
</form></div>
<div class="col-sm-6" style="position:relative;">

  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
   Merchant bank
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">SBI</a></li>
    <li><a class="dropdown-item" href="#">HDFC</a></li>
    <li><a class="dropdown-item" href="#">Axis Bank</a></li>
    <li><a class="dropdown-item" href="#">ICICI</a></li>
  </ul>
</div>
<div class="col-sm-9">
 ​ <div class="dropdown dropend">
    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
      Dropend
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Normal</a></li>
      <li><a class="dropdown-item active" href="#">Active</a></li>
      <li><a class="dropdown-item disabled" href="#">Disabled</a></li>
    </ul>
  </div></div></div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>