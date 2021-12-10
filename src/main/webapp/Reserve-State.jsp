<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="with=device-width, initial-scale=1.0">
    <title>Reserve State page</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=KoHo:wght@200;400&family=Pattaya&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@500&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- fullCalendar -->
    <link rel="stylesheet" href="plugins/fullcalendar/main.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">

    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
    <!--Swipe-->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  

   <link rel="stylesheet" href="home.css">
   <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

</head>
<body >
<section class="header">
    <nav>
        <ul class="a1">
          <li><a href="index.html"><img src="img/logo-Uni.png"></a></li>
          <li><a href="#" class="nav-link"><h1>University Library</h1></a>
        </ul>
        <div class="nav--links">
          <ul>
            <li>
              <a href="Home.jsp" >Home</a>
            </li>
            <li>
              <a  href="Search-book.jsp" style="color: rgba(62, 235, 9, 0.993);">Library</a>
            </li>
            <li>
              <a  href="#">Contact us</a>
            </li>
            <li>
              <a href="Auth.jsp">Log out</a>
            </li> 
          </ul>          
        </div>
    </nav>
    <%if(request.getParameter("res") != null) {%>
   <div class="text-box2">
     <h1 style="color: rgb(59, 228, 17)">Successful Reserve the book</h1>
     <p style="color: #ffff"></p>
   </div>
   <%}else{ %>
    <div class="text-box2">
     <h1 style="color: rgb(228, 17, 17)">Invalid Reserve</h1>
     <p style="color: #ffff">Something wrong</p>
   </div><%} %>
</section>
</body>
</html>