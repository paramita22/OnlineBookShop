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

<title>Index@OnlineBookShop</title>

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
<a class="nav-link" href="UserSignIn.jsp"><i class="bi bi-box-arrow-right"></i>Sign In</a>
<a class="nav-link" href="#">Catalogue Overview<i class="bi bi-database-fill"></i></a>
<a class="nav-link" href="#">Payment Portal<i class="bi bi-briefcase-fill"></i></a>
<a class="nav-link disabled" href="#">OrderBooks<i class="bi bi-menu-button-wide-fill"></i></a>
</div>
</div>
</div>
</nav>
<div class="container-fluid">
 <div id="carouselControl1" class="carousel slide" data-bs-touch="false">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/stackWell.png" class="d-block w-100" style="height:600px;" alt="Slide1" />
                    <div class="carousel-caption">
                        <h2><strong>A Humble Reminder to the BookWorm, We are Here</strong></h2>
                        <a href="features.html"><input type="button" class="btn btn-danger" value="Read More" /></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/oldBooks.jpeg" class="d-block w-100" style="height:600px;" alt="Slide2" />
                    <div class="carousel-caption">
                        <h2><strong>NOSTALGIA?Welcome HOME...</strong></h2>
                        <a href="signup.html"><input type="button" class="btn btn-danger" value="Read More" /></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/bookSwap.png" class="d-block w-100" style="height:600px;" alt="Slide3" />
                    <div class="carousel-caption">
                        <h2><strong>WHAT IS YOUR PETRONUS?</strong></h2>
                        <a href="blogs.html"><input type="button" class="btn btn-danger" value="Read More" /></a>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselControl1" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselControl1" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
  <div class="row text-center">

            <div class="card" style="width:24rem;height:32rem;position:relative;">
                <img src="img/bm2.jpeg" alt="Features" />
                <div class="card-body">
                    <h4 class="card-title">WE are ALIVE</h4>
                    <p class="card-text">Reading <b>YOUR'S</b> For Ever</p>
                    <a href="catalogue.jsp" class="btn btn-primary">CHECK</a>
                </div>
            </div>

            <div class="card" style="width:24rem;height:32rem;position:relative;">
                <img src="img/bm1.jpeg" alt="natural" />
                <div class="card-body">
                    <h4 class="card-title">It is in your Nature</h4>
                    <p class="card-text">Fresh Feed</p>
                    <a href="fresh.jsp" class="btn btn-primary">CHECK</a>
                </div>
            </div>

            <div class="card" style="width:24rem;height:32rem;position:relative;">
                <img src="img/sb3.jpeg" alt="oldschool" />
                <img src="img/sb2.jpeg" alt="always"/>
                <div class="card-body">
                  
                    <h4 class="card-title">Back to Teens?Try Barter</h4>
                    <a href="oldschool.jsp" class="btn btn-primary">CHECK</a>
                </div>
            </div>

            <div class="card" style="width:24rem;height:32rem;">
				<img src="img/bm3.jpeg" alt="newTrend"/>
                <div class="card-body">
                    <h4 class="card-title">Socio?</h4>
                    <a href="#">facebook<i class="bi bi-facebook"></i></a><br />
                    <a href="#">Instagram<i class="bi bi-instagram"></i></a><br />
                    <a href="#">linkedin<i class="bi bi-linkedin"></i></a>
                 

                </div>
            </div>
        </div>
           <footer class="mt-5 navbar navbar-expand-sm bg-dark navbar-dark bottom">
           
        <ul class="navbar-nav">
           
                <a class="nav-link active" aria-current="page" href="#">ContactUs at 2143987605<i class="bi bi-telephone-fill"></i></a>
                <a class="nav-link active" aria-current="page" href="#">Whatsapp :10209384756<i class="bi bi-whatsapp"></i></a>
                <a class="nav-link active" aria-current="page" href="#">email at bkworms@gmail.com<i class="bi bi-envelope-at-fill"></i></a>
           
        </ul>
      <div class="accordion-item">
            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                <button class="accordion-button collapsed text-white bg-primary" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                  A Humble reminder to our BookWorms...
                </button>
            </h2>
            <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                <div class="accordion-body">
                    <strong>Register and Follow us on Social Media sites to learn about App updates</strong>
                </div>
            </div>

        </div>
    </footer></div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>