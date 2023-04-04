<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank You</title>
<style>
.container-fluid{
	height:700px;
	width:auto;
	background-image:url("img/thank.jpeg");
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<center></center>
<form method="get" action="index.jsp">
<%	String user_email = request.getParameter("user_email");
String contact_no = request.getParameter("contact_no");

HttpSession session1 = request.getSession();
session1.setAttribute("user_email", user_email);
session1.setAttribute("contact_no", contact_no);%>
<table style="backgroung-image:url('img/thank.jpeg');">
<tr><td>user_email:</td><td><input type="text" name="user_email"></td></tr>
<tr><td>contact:</td><input type="text" name="contact_no"><td></td></tr>
<tr>Give Feedback:<textarea></textarea></tr>
<input type="submit" value="tank You">
</table>

</form></center>
<jsp:include page="footer.jsp"></jsp:include>
</body></html>