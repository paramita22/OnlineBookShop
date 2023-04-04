<%	String user_email = request.getParameter("user_email");
String contact_no = request.getParameter("contact_no");

HttpSession session1 = request.getSession();
session1.setAttribute("user_email", user_email);
session1.setAttribute("contact_no", contact_no);%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookPurchase</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<button type="button" class="btn btn-primary position-relative">
  Profile
  <span class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
    <span class="visually-hidden">New alerts</span>
  </span>
</button>
<p>
  <a class="btn btn-primary" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Check Book Details </a>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Check Author Details</button>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Know More on Purchase Options</button>
</p>
<div class="row">
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample1">
      <div class="card card-body">
        Tolstoy began writing War and Peace in 1863, the year that he finally married and settled down at his country estate. In September of that year, he wrote to Elizabeth Bers, his sister-in-law, asking if she could find any chronicles, diaries or records that related to the Napoleonic period in Russia. He was dismayed to find that few written records covered the domestic aspects of Russian life at that time, and tried to rectify these omissions in his early drafts of the novel.[7] The first half of the book was written and named "1805". During the writing of the second half, he read widely and acknowledged Schopenhauer as one of his main inspirations. Tolstoy wrote in a letter to Afanasy Fet that what he had written in War and Peace is also said by Schopenhauer in The World as Will and Representation. However, Tolstoy approaches "it from the other side."
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample2">
      <div class="card card-body">
       The novel spans the period from 1805 to 1820. The era of Catherine the Great was still fresh in the minds of older people. Catherine had made French the language of her royal court.[16] For the next 100 years, it became a social requirement for the Russian nobility to speak French and understand French culture 
      </div>
    </div>
  </div>
</div>
<button type="button" class="btn btn-lg btn-danger" style="flaot:right;" data-bs-toggle="popover" data-bs-title="Popover title" data-bs-content="And here's some amazing content. It's very engaging. Right?">Click to Know More</button>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>