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
<title>OrderBooks</title>

<script>
const alertPlaceholder = document.getElementById('liveAlertPlaceholder')

const alert = (message, type) => {
  const wrapper = document.createElement('div')
  wrapper.innerHTML = [
    `<div class="alert alert-${type} alert-dismissible" role="alert">`,
    `   <div>${message}</div>`,
    '   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>',
    '</div>'
  ].join('')

  alertPlaceholder.append(wrapper)
}

const alertTrigger = document.getElementById('liveAlertBtn')
if (alertTrigger) {
  alertTrigger.addEventListener('click', () => {
    alert('You cannot order the same book twice!', 'success')
  })
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<h2><b>BOOKS IN DEMAND</b></h2>
<div class="row text-center">
<div class="card" style="width: 24rem;height:28rem;">
  <img src="img/cs2.jpeg" height=300 class="card-img-top" alt="book_ordered_highest">
  <div class="card-title"><b>RANK 1</b></div>
  <div class="card-body">
  
    <p class="card-text">The Book Ordered the most.</p>
  </div>
</div>
<div class="card" style="width: 24rem;height:28rem;">
  <img src="img/hs2.jpg" height=300 class="card-img-top" alt="rarest_collect">
  <div class="card-title"><b>RANK 2</b></div>
  <div class="card-body">
    <p class="card-text">From our pandora's Box</p>
  </div>
</div>
<div class="card" style="width: 24rem;height:28rem;">
  <img src="img/cm3.jpeg" height=300 class="card-img-top" alt="love_book">
  <div class="card-title"><b>RANK 3</b></div>
  <div class="card-body">
    <p class="card-text">The Book to Cherish.</p>
  </div>
</div>
<div class="card" style="width: 24rem;height:28rem;">
  <img src="img/go5.jpeg" height=300 class="card-img-top" alt="love_book">
  <div class="card-title"><b>RANK 4</b></div>
  <div class="card-body">
    <p class="card-text">The FAV Book.</p>
  </div>
</div>
<h2>AVAILABILITY OF THE ABOVE TREASURES</h2>
<div class="progress" role="progressbar" aria-label="Success striped example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
  <strong><b>1</b></strong><div class="progress-bar progress-bar-striped bg-success" style="width: 25%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Info striped example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
  <strong><b>2</b></strong><div class="progress-bar progress-bar-striped bg-info" style="width: 50%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Warning striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
  <strong><b>3</b></strong><div class="progress-bar progress-bar-striped bg-warning" style="width: 75%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Danger striped example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
  <strong><b>4</b></strong><div class="progress-bar progress-bar-striped bg-danger" style="width: 100%"></div>
</div>
</div>
<div class="row text-center">
<form method="get" action="PaymentPortal.jsp">
<table><tr>
<td><div class="form-group"><label for="bookid">Book Wish on Subject</label></td><td><input type="text" placeholder="book_name2" name="book_name"></div></td></tr>
<tr><td><div class="form-group"><label for="book_name">Book Name</label></td><td><input type="text" placeholder="enter name of book" name="book_name"></div></td></tr>
<tr><td><div class="form-group"><label for="book_name">Author Name</label></td><td><input type="text" placeholder="enter name of book" name="book_name"></div></td></tr>
<tr><td><input type="button" value="get ISBN" name="bookid"></div><div id="liveAlertPlaceholder"></div></td><td>
<button type="button" class="btn btn-primary" id="liveAlertBtn">Check Availability</button>
</div></td></tr></table>
</form>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>