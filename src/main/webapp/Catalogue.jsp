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
            min-height: 720px;
            width: 700px;
    		
        }
        
        .btn {
        width: 400px;
        height:200px;
        border-radius: 35px;
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
</style>
<title>Catalogue#OnlineBookShop</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
	
	<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">Check Our Fortune</button>

<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasTopLabel">Catalogue Overview</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
  <ul class="list-group list-group-horizontal">
  <li class="list-group-item"></li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
</ul>
<ul class="list-group list-group-horizontal-md">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
</ul>
<ul class="list-group list-group-horizontal-lg">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
</ul>
<ul class="list-group list-group-horizontal-xl">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
</ul>
<ul class="list-group list-group-horizontal-xxl">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
</ul>
  </div>
</div>
	<div class="btn-group" style=" background-image:url('img/bookSwap.png');">
	 <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><span>Login To find Your Bag</span></button>
	 <ul class="dropdown-menu">
  <form class="px-4 py-3">
    <li><div class="mb-3">
      <label for="exampleDropdownFormEmail1" class="form-label">Email address</label>
      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
    </div></li>
    <li>
    <div class="mb-3">
      <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
    </div></li>
   <li> <div class="mb-3">
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label" for="dropdownCheck">
          Remember me
        </label>
      </div>
    </div></li>
    <button type="submit" class="btn btn-primary">Sign in</button>
  </form></ul></div>
  <div class="dropdown-menu dropdown-divider"></div>
  <a class="dropdown-item" href="UserSignUp.jsp">New around here? Sign up</a>
  <a class="dropdown-item" href="ChangePassword.jsp">Forgot password?</a>
</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>