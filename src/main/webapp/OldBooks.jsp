<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1 ">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
 <style>
        .container-fluid {
            min-height: 600px;
            width: auto;
            padding:10px;
            margin:50px;
            background-image:url("img/bk10.jpeg");
           
        }
        li{
        	width:300px;
        	font-size:12px;
        	font-weight:bold;
        }
</style>
<title>Oldbooks#onlinebookshop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">

<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" style="haight:100px;width:200px;">
Check Your Cuisine
</button>

<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasExampleLabel">CHECK YOUR PALETTE</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div>
     <ul class="list-group">
  <li class="list-group-item">NostalGia At its Best</li>

  <li class="list-group-item list-group-item-primary">List of Scrolls as pdf</li>
  <li class="list-group-item list-group-item-secondary">Old English Literature</li>
  <li class="list-group-item list-group-item-success">Physical Copies of <b><em>rare available</em></b>Books</li>
  <li class="list-group-item list-group-item-danger">Some prohibited Books for ages</li>
  <li class="list-group-item list-group-item-warning">Books on Magic</li>
  <li class="list-group-item list-group-item-info">Books of Other languages</li>
  <li class="list-group-item list-group-item-light">RomCom Classics Cherished for ages</li>
  <li class="list-group-item list-group-item-dark">Serious Research Papers of Scientists</li>
</ul>
    </div>
    <div class="dropdown mt-3">
      <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" style="haight:100px;width:200px;">
        Get The ZigSaw in Place
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="BookOrders.jsp">Books Ordered Already</a></li>
        <li><a class="dropdown-item" href="BookSale.jsp">Sell Your Treasure</a></li>
        <li><a class="dropdown-item" href="BookPurchase.jsp">On the treasure hunt</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="modal-body">
  <h1 class="fs-5" style="height:100px;width:200px;background-color:yellow;color:brown;float:right;border-radius:25px;text-alignj:center;"><b>What Do You See in the Mirror?</b></h1>
  <button class="btn btn-secondary" data-bs-toggle="popover" title="Popover title" data-bs-content="Popover body content is set in this attribute.">Hello! Are You There?</button>
  <hr>
  <br/><h1 class="fs-5" style="height:100px;width:200px;background-color:yellow;color:brown;float:right;border-radius:25px;text-alignj:center;"><b>Where Do You Want to Go?</b></h1>
  <a href="PaymentPortal.jsp" data-bs-toggle="tooltip" title="Tooltip">Help us Serve You Better</a> and <a href="#" data-bs-toggle="tooltip" title="Tooltip">Go Get your Lost Piece</a>
</div></div>
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

<jsp:include page="footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>