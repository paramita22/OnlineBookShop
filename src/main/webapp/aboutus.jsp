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
            background-color:blue;
            background-image:url("img/bm1.jpeg");
        }
        
        .btn{
        width:300px;
        height:100px;
        }

</style>
<title>aboutus#onlinebookshop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<div class="dropdown">
  <button class="btn btn-info dropdown-toggle" style="position:absolute;"
   type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Our Goals
  </button>
  <ul class="dropdown-menu dropdown-menu-dark">
    <li><a class="dropdown-item active" href="#">Our Vision</a></li>
    <li><a class="dropdown-item" href="#">Our Mission</a></li>
    <li><a class="dropdown-item" href="#">Future Scope</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="Catalogue.jsp">Check Our Catalogue for more</a></li>
  </ul>
</div>
<div style="position:relative;left:300px;"><a href="OldBooks.jsp"><img src="img/bm2.jpeg" alt="nostalgia"/></a></div>
<div style="position:relative;left:700px;"><a href="NewBooks.jsp"><img src="img/bm3.jpeg" alt="Future"/></a></div>
<div class="dropdown-center"><button type="button" class="btn btn-secondary dropdown-toggle" style="float:right;" data-bs-toggle="dropdown" aria-expanded="false">
                           Drop us a handki...
                        </button><ul class="dropdown-menu">
  <form class="px-4 py-3">
    <li><div class="mb-3">
      <label for="exampleDropdownFormEmail1" class="form-label">Email address</label>
      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
    </div></li>
    <li><div class="mb-3">
      <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
    </div></li>
    <li><div class="mb-3">
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label" for="dropdownCheck">
          Remember me
        </label>
      </div>
    </div></li>
    <li></li><button type="submit" class="btn btn-primary">Sign in</button>
  </form>
  <li><div class="dropdown-divider"></div>
  <a class="dropdown-item" href="#">New around here? Sign up</a>
  <a class="dropdown-item" href="#">Forgot password?</a></li></ul>
</div>
</div>
?<jsp:include page="footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>