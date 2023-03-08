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
            min-height: 680px;
            width: 800px;
          
           
        }


 ul {
        margin-right: 10px;
        padding-right: 20px;
    }

    li {
        margin-right: 20px;
        text-align: center;
        font-size: 24px;
    }
    table {
    
        height: 500px;
        width: auto;
        border: 7px hidden rgba(128,0,128,2.5);
        margin: 100px;
        background-image:url("img/modernBooks.jpeg");
    }
    td{
        height:300px;
        width:400px;
        margin:40px;
        border:3px hidden #b6ff00;
        padding:20px;
    }

 .btn {
        width: 300px;
        height:100px;
        border-radius: 15px;
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


 


</style>
<title>NewBooks#onlinebookshop</title>
</head>
<body bgcolor="#ccccff">
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">

<table>
                    <tr><td><div class="btn-group">
                      
                        <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                           <span>Order the Genie</span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Place Your Unique Demand</a></li>
                            <li><a class="dropdown-item" href="#">Compare prices with other Platforms</a></li>
                            <li><a class="dropdown-item" href="#">Discussion Forum</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Meet Expets-Ask</a></li>
                        </ul>
                    </div></td>

           		<td></td>
                <td><div style="margin:10px;position:relative;">
                    <div class="btn-group dropend">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Let it Flow
                        </button>
                        <ul class="dropdown-menu">
                         <li><a class="dropdown-item" href="#">Fiction</a></li>
                            <li><a class="dropdown-item" href="#">SciFi</a></li>
                            <li><a class="dropdown-item"  href="#">Non-Fiction</a></li>
                        </ul>
                    </div>
                    </div></td></tr>
            
                  <tr>
                  <td> <div class="dropdown-center"><button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Discover Features
                        </button><ul class="dropdown-menu">
                         <li><a href="UserProfile.jsp">Read</a></li>
                            <li><a href="PaymentPortal.jsp">Buy</a></li>
                            <li><a href="OnSale.jsp">Sell</a></li>
                        </ul></div></td>
                  <td></td>
                  <td><div style="position:relative;">
                    <div class="btn-group dropend">
     
                        <button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Ask Author
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">
                            <div class="dropdown-center">
                            <button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        AuthorLocal</button></a>  <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Contact via email</a></li>
                        <li><a class="dropdown-item active" href="#" aria-current="true">Contact on facebook</a></li>
                        <li><a class="dropdown-item" href="#">Contact on twitter</a></li>
                    </ul></div></li>
                            <li><a class="dropdown-item" href="#">
                            
                            <div class="dropdown-center"><button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                          Expert</button></a>  <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Register on Subject Portal</a></li>
                        <li><a class="dropdown-item active" href="#" aria-current="true">Youtube Video links</a></li>
                        <li><a class="dropdown-item" href="#">Upload Questions</a></li>
                    </ul></div></li>
                            <li><a class="dropdown-item" href="#">
                            
                            <div class="dropdown-center"><button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                           AuthorAbroad</button></a>  <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Book Appointment</a></li>
                        <li><a class="dropdown-item active" href="#" aria-current="true">Send email</a></li>
                        <li><a class="dropdown-item" href="#">Connect on Linkedin</a></li>
                    </ul></div></li>
                        </ul>
                    </div>
                   </div></td></tr></table></div>
                    <jsp:include page="footer.jsp"></jsp:include>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>