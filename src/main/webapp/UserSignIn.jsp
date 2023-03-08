<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1 ">
<title>SignIn@OnlineBookShop </title>
<style>
.container-fluid{
height:600px;
background-image:url("img/download.jpeg");
}

.btn{
	background-color:red;
}
.btn:focus{
background-color:green;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<div class="panel">
<div class="panel-heading"><h2><b>USER ENTRY CHECKPOINT</b></h2></div>
<div class="panel-body">
<form action="UserProfile.jsp" method="post">
<table>
<tr><td>username:</td><td><input type="text" placeholder="registered email" name="user_email" required/></td></tr>
<tr><td>password:</td><td><input type="password" placeholder="password" name="user_password" required/></td></tr>
<tr><td><a href="Changepassword.jsp">Forgot password?</a></td><td><input type="submit" value="Sign In" class="btn"/></td></tr>
</table></form></div>
<div class="panel-footer"></div>
</div></div>
<jsp:include page="footer.jsp"></jsp:include>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>