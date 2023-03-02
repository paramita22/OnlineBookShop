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
        container-fluid {
            min-height: 680px;
            width: 800px;
            background-color:blue;
            background-image:url("img/stackWell.png");
        }

        .navbar {
        background-color:#
        }

        ul {
            margin-right: 200px;
            padding-right: 200px;
        }

        li {
            margin-right: 200px;
            text-align: center;
            font-size: 24px;
        }
        .nav-item {
            width: 80px;
            margin: 20px;
            padding: 10px;
            border-radius: 15px;
        }
      
         a{
             font-size:24px;
             margin:50px;
             text-align:center;
         }
   
         .card{
             margin:20px;
             padding:10px;
             border-radius:15px;
             box-shadow:10px 10px 0px -5px rgba(0,0,0,0.5);
         }
         h2{
   			color:blue;
         	text-align:center;
         	font-weight:bold;
         }
         
     </style> 

<title>header@OnlineBookShop</title>

</head>
<body>
<nav class ="navbar navbar-expand-lg bg-body-tertiary">
<div class="container-fluid">
<a class="navbar-brand" href="#">OBS<i class="bi bi-heart-pulse-fill"></i></a>
<button class="nvbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="NavbarnavDropdown" aria-expanded="false" aria-label="Toggle-navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
<div class="navbar-nav">
<a class="nav-link active" aria-current="page" href="#">Welcome<i class="bi bi-people-fill"></i></a>
<a class="nav-link" href="#">About Us<i class="bi bi-info-circle-fill"></i></a>
<a class="nav-link" href="#"><i class="bi bi-box-arrow-right"></i>Sign In</a>
<a class="nav-link" href="#">Catalogue Overview<i class="bi bi-database-fill"></i></a>
<a class="nav-link" href="#">Payment Portal<i class="bi bi-briefcase-fill"></i></a>
<a class="nav-link disabled" href="#">OrderBooks<i class="bi bi-menu-button-wide-fill"></i></a>
</div>
</div>
</div>
</nav>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>