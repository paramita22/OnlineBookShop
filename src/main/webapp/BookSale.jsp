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
<title>BookSale # onlinebookshop</title>
<style>

.container-fluid{


}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form>
  <div class="mb-3">
    <label for="selectToastPlacement"><h1 style="background-color:#ffccff;font-color:blue;">Books On Sale</h1></label>
    <select class="form-select mt-2" id="selectToastPlacement">
      <option value="" selected>Select a book</option>
      <option value="top-0 start-0">Mathematics<img src="img/math4.jpeg" width="100" height="20" alt="math"/></option>
      <option value="top-0 start-50 translate-middle-x">Literature</option>
      <option value="top-0 end-0">Chemistry</option>
      <option value="top-50 start-0 translate-middle-y">Geography</option>
      <option value="top-50 start-50 translate-middle">History</option>
      <option value="top-50 end-0 translate-middle-y">Contemporary</option>
      <option value="bottom-0 start-0">Hello World</option>
      <option value="bottom-0 start-50 translate-middle-x">Computer Sciencer</option>
      <option value="bottom-0 end-0">Solve Queries</option>
    </select>
  </div>
</form>
<div aria-live="polite" aria-atomic="true" class="bg-body-secondary position-relative bd-example-toasts rounded-3">
  <div class="btn-success toast-container p-3" id="toastPlacement">
    <div class="toast">
      <div class="toast-header">
        <strong class="me-auto">Lets Babel</strong>
        <small>Hello! are you there?</small>
      </div>
      <div class="toast-body">
      <img src="img/sb1.jpeg" class="rounded me-2" alt="bookToast">
        <h4>Hello bloggers and vlogers=>> Try a new passion</h4>
      </div>
    </div>
  </div>
</div>
<div class="card">
  <img src="img/cs2.jpeg" height=200 width=200 alt="bookFav">

  <div class="card-body">
    <h5 class="card-title">Book On Sale</h5>
    <p class="card-text">The best book to be with</p>
    <a href="#" class="btn btn-primary">Show Control</a>
  </div>
</div>

<div class="card" aria-hidden="true" style="float:right;">
  <img src="img/cm5.jpeg" alt="books">
  <div class="card-body">
    <h5 class="card-title placeholder-glow">
      <span class="placeholder col-6">Welcome to the DEN</span>
    </h5>
    <p class="card-text placeholder-glow">
    <form method="get" action=""></form>
      <span class="placeholder col-7">Book_name:</span>
      <span class="placeholder col-4">Author_name:</span>
      <span class="placeholder col-4">Cost:</span>
      <span class="placeholder col-6">ISBN:</span>
      <span class="placeholder col-8">Online version:</span></form>
    </p>
    <a href="#" tabindex="-1" class="btn btn-primary disabled placeholder col-6"></a>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>