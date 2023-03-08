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
        container-fluid {
            min-height: 720px;
            width: auto;
            background-color:blue;
            background-image:url("img/stackWell.png");
        }

        .navbar {
        }

        ul {
            margin-right: 200px;
            padding-right: 200px;
        }

        li {
            margin-right: 200px;
            text-align: center;
            background-color:#ffffff;
            color:#000000;
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
             margin:50px;
             border-radius:15px;
             box-shadow:10px 10px 0px -5px rgba(0,0,0,0.5);
         }
             .btn {
        width: 200px;
        border-radius: 15px;
    }
    .dropdown-menu{
        width: 300px;
        height: 150px;
        background-color: blue;
        color: #000000;
        padding: 16px;
        font-size: 12px;
        border: none;
    }

    .dropdown{
        position: relative;
        display: inline-block;
    }

    .dropdown-menu{
        display: none;
        background-color: #ffffff;
        position: absolute;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(128,0,128,2.5);
        z-index: 1;
    }

    .dropdown-item a{
        color: black;
        padding: 12px 16px;
        display: block;
    }

        .dropdown-item a:hover {
            background-color: aqua;
        }

    .dropdown:hover.dropdown-menu {
        display: block;
    }

    .dropdown:hover.dropdown-menu {
        background-color: #3e8e41;
        font-size: 20px;
    }
 
         .form-label{
         text-align:center;
         margin:50px;
         font-weight:36px;
         }
        </style>
        <title>Readingtrack#onlinebookshop</title> 
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<ul class="nav nav-pills nav-fill gap-2 p-1 small bg-primary rounded-5 shadow-sm" id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);">
  <li class="nav-item" role="presentation">
    <button class="nav-link active rounded-25" id="home-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">Your Wallet</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link rounded-25" id="profile-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Profile</button>
  </li>
  <li class="nav-item" role="presentation"><div class="btn-group">
  
  <button type="button" class="nav-link rounded-25 btn btn- dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Reading Track
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Discrete mathematics</a></li>
    <li><a class="dropdown-item" href="#">Ancient Civilizations</a></li>
    <li><a class="dropdown-item" href="#">Stephen King Collections</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Separated link</a></li>
  </ul>
</div>
  </li>
</ul></div>
<div class="row text-center" style="margin:50px;">
<div class="card" style="width:24rem;height:24rem;position:absolute;">
  <img src="img/bm11.jpg" class="card-img-top" alt="leisure">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div></div></div>


<div class="col-xs-4 col-xs-offset-4">
<div class="card" style="width:24rem;height:24rem;position:relative;float:right;">
  <img src="img/bm2.jpeg" class="card-img-top" alt="nostalgia">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div></div></div>
<form>
<div class="mb-3">
  <label for="formFileMultiple" class="form-label">Books to be placed in queue</label>
  <input class="form-control" type="file" id="formFileMultiple" multiple>
</div>
<div class="mb-3">
  <label for="formFileDisabled" class="form-label">Books Waiting to fill your palette[Choose some to appear here]</label>
  <input class="form-control" type="file" id="formFileDisabled" disabled>
</div>
<div class="mb-3">
  <label for="formFileSm" class="form-label">Fav books</label>
  <input class="form-control form-control-sm" id="formFileSm" type="file">
</div></form>
</div></div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>