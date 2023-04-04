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

	.list-group-itemi{
		`text-align:center;
			font-size:12px;
		}
	.offcanvas-top{
		height:800px;
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
    td{
    margin:50px;
    text-align:center;
    }
</style>
<title>Catalogue#OnlineBookShop</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<button class="btn btn-info" type="button" style="width:400px;height:200px;padding:50px;position:absolute;" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop"><h2><b><i class="bi bi-arrow-up-square-fill"></i>Check Our Fortune</b></h2></button>

<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasTopLabel">Catalogue Overview</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">Choose Subjects</button>
  </div>
  <div class="offcanvas-body">
  <ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item">World History of Inventions</li>
  <li class="list-group-item">World History of Human Civilisations</li>
  <li class="list-group-item">World history of Revolutions</li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item">Geography of specific continents</li>
  <li class="list-group-item">Geographical Measures</li>
  <li class="list-group-item">Geographical Upheavals</li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item">Physics at its Core</li>
  <li class="list-group-item">Physics at its best</li>
  <li class="list-group-item">Physics at its Birth</li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item">Chemical Analysis</li>
  <li class="list-group-item">Organic Chemistry</li>
  <li class="list-group-item">AllChemistry</li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item">Botany</li>
  <li class="list-group-item">Zoology</li>
  <li class="list-group-item">Physiology</li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item">English Literature</li>
  <li class="list-group-item">History of English language</li>
  <li class="list-group-item">Usage of English</li>
</ul>
  </div>
</div>
<table><tr>
<td>
<div style="margin-top:200px;">
	<div class="btn-group">
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
  </form></ul></div></div></td>
<td>
<div class="card" style="width: 12rem;height:18rem;position:relative;">
  <img src="img/math4.jpeg" class="card-img-top" alt="maths1">
  <div class="card-body">
    <p class="card-text">Solve to know</p>
  </div>
</div></td>
<td>
<div class="card" style="width: 18rem;height:28rem;position:relative;">
  <img src="img/en5.jpeg" class="card-img-top" alt="Englishlang">
  <div class="card-body">
    <p class="card-text">Knowing the Language better</p>
  </div></div></div></td>
<td>
<div class="card" style="width: 12rem;height:24rem;position:relative;">
  <img src="img/hs8.jpg" class="card-img-top" alt="history1">
  <div class="card-body">
    <p class="card-text">Know your Forefathers</p>
  </div>
</div></td>
<td>
<div class="card" style="width: 12rem;height:20rem;position:relative;">
  <img src="img/en2.jpeg" class="card-img-top" alt="physics1">
  <div class="card-body">
    <p class="card-text">English is Global</p>
  </div>
</div></td></tr>


<tr><td>
<div class="card" style="width: 12rem;height:20rem;position:relative;">
  <img src="img/cm11.jpeg" class="card-img-top" alt="chemistry1">
  <div class="card-body">
    <p class="card-text">Chemistry is a Mystery</p>
  </div></div></td>
  <td>
  <div class="card" style="width: 12rem;height:20rem;position:relative;">
  <img src="img/go10.jpeg" class="card-img-top" alt="geography1">
  <div class="card-body">
    <p class="card-text">Know the World aeound</p>
  </div>
</div></td>

<td>
<div class="card" style="width: 12rem;height:12rem;position:relative;">
  <img src="img/math2.jpeg" class="card-img-top" alt="maths1">
  <div class="card-body">
    <p class="card-text">Solve to know</p>
  </div>
</div></td>
<td>
  <div class="card" style="width: 12rem;height:20rem;position:relative;">
  <img src="img/go7.jpeg" class="card-img-top" alt="geography1">
  <div class="card-body">
    <p class="card-text">The World Around</p>
  </div>
</div></td>

  <td>
   <button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><span>Wait!!</span></button>
  <ul class="dropdown-menu dropdown-divider">
  <a class="dropdown-item" href="UserSignUp.jsp">New around here? Sign up</a>
  <a class="dropdown-item" href="ChangePassword.jsp">Forgot password?</a></ul></td></tr></table>
</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>