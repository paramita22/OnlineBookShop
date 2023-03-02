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
   
    
         h2{
   			color:blue;
         	text-align:center;
         	font-weight:bold;
         }
         
                table {
          background-color:aliceblue;
            height: 500px;
            width: 600px;
            margin-left:500px;
            margin-bottom:100px;
            border-radius: 15px;
            box-shadow: 20px 20px 0px -10px rgb(128, 128, 128,0.5);
        }
        td{
            height:80px;
            width:200px;
            margin-left:100px;
            border-radius:15px;
            box-shadow:10px 10px 5px -5px rgb(128, 128, 128,0.5);
        }
        input{
        
            width:400px;
            height:50px;
            border-radius:15px;
        }
        .btn{
            width:200px;
            border-radius:15px;
        }
        .panel{
            position:relative;
            float:right;
            height:500px;
            width:400px;
            margin:100px;
            border-radius:20px;
        }
     </style> 

<title>SignUp@OnlineBookShop</title>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">

<form action="./reg" method="post">
                    <h2><b>Register to Reap Benefits</b></h2>
                    <table cell-spacing="50px" cell-padding="50px">
                        <tr><th>First Name:</th><td><input type="text" name="user_fname" id="ufname" required /></td></tr>
                        <tr><th>Last Name:</th><td><input type="text" name="user_lname" id="ulname" /></td></tr>
                        <tr><th>Email:</th><td><input type="email" name="user_email" id="uemail" required /></td></tr>
                        <tr><th>Password:</th><td><input type="password" name="user_password" id="upass" required /></td></tr>
                        <tr><th>Confirm Password:</th><td><input type="password" name="user_password" id="upass" required /></td></tr>
                        <tr><th>Contact No.:</th><td><input type="number" name="contact_no" id="ucontact" required /></td></tr>
                        <tr><th>Address:</th><td><input type="text" name="address" id="uaddress" /></td></tr>
                        <tr><td><input type="reset" value="Refresh" class="btn btn-lg-active" /></td><td><center><a href="RegisterReceipt.jsp"><input type="submit" value="Get Receipt" onkeyup="printReceipt()" class="btn btn-success" style="border-radius:30px;" /></center></a></td></tr>
                    </table>
                
            
        </form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>