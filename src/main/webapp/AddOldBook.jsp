<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddNewBooks</title>
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
        background-color:#ccffff;
        
    }
    td{
        height:300px;
        width:400px;
        margin:40px;
        border:3px groove #000000;
        padding:20px;
    }


</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form method="post" action="./obs2">
<table>
<tr><th>ID</th><th>Book_Name</th><th>Author_Name</th><th>Subject</th><th>HardCoverCopies</th><th>Onlineversions</th><th>Cost</th></tr>
<tr><td><input type="number" placeholder="enter id" name="old_bookid" required></td><td><input type="text" placeholder="enter Book name" name="old_book_name" required></td><td><input type="text" placeholder="enter author name" name="authorname" required></td><td><input type="text" placeholder="enter id" name="hardcover" required></td><td><input type="text" placeholder="online version" name="online_version" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td></tr>
<tr><td><input type="number" placeholder="enter id" name="old_bookid" required></td><td><input type="text" placeholder="enter Book name" name="old_book_name" required></td><td><input type="text" placeholder="enter author name" name="authorname" required></td><td><input type="text" placeholder="enter id" name="hardcover" required></td><td><input type="text" placeholder="online version" name="online_version" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td></tr>
<tr><td><input type="number" placeholder="enter id" name="old_bookid" required></td><td><input type="text" placeholder="enter Book name" name="old_book_name" required></td><td><input type="text" placeholder="enter author name" name="authorname" required></td><td><input type="text" placeholder="enter id" name="hardcover" required></td><td><input type="text" placeholder="online version" name="online_version" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td><td><input type="text" placeholder="enter cost" name="cost" required></td></tr>
</table></form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>