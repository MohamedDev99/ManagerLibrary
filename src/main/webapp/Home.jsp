<%@page import="DAO.BooksManager"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="Model.Book" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="with=device-width, initial-scale=1.0">
    <title>Home page</title>
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
              <a href="Home.jsp" style="color: rgba(62, 235, 9, 0.993);">Home</a>
            </li>
            <li>
              <a  href="Search-book.jsp">Library</a>
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
   <div class="text-box">
     <h1>Welcome To Your Library</h1>
     <p>here you can any book for your studies</p>
   </div>

   <!-- Swiper -->
   <div  class="wrapper">
   <%
   List<Book> books = BooksManager.AllBooks();
    		 Book book1 = new Book();
    		 Book book2 = new Book();
    		 Book book3 = new Book();
    		 Book book4 = new Book();
    		 Book book5 = new Book();
   %>
   
    <div class="carousel owl-carousel">
    <% book1 = books.get(0); %>
       <div class="card card-1" style="background-image: url(<%= book1.getImg() %>);">
          
          <div class="info-book">
            <h2><b><%= book1.getName() %></b></h2>
            <p><%= book1.getType() %></p>
            <a href="Reserve-book.jsp?bookN=<%=book1.getName()%>&bookW=<%=book1.getWriter()%>&bookT=<%=book1.getType()%>&bookI=<%=book1.getImg()%>">Reserve</a>
          </div>
       </div>
       <% book2 = books.get(1); %>
       <div class="card card-2" style="background-image: url(<%= book2.getImg() %>);">
          
          <div class="info-book">
            <h2><b><%= book2.getName() %></b></h2>
            <p><%= book2.getType() %></p>
            <a href="Reserve-book.jsp?bookN=<%=book2.getName()%>&bookW=<%=book2.getWriter()%>&bookT=<%=book2.getType()%>&bookI=<%=book2.getImg()%>">Reserve</a>
          </div>
       </div>
       <% book3 = books.get(2); %>
       <div class="card card-3" style="background-image: url(<%= book3.getImg() %>);">
         
          <div class="info-book">
            <h2><b><%= book3.getName() %></b></h2>
            <p><%= book3.getType() %></p>
            <a href="Reserve-book.jsp?bookN=<%=book3.getName()%>&bookW=<%=book3.getWriter()%>&bookT=<%=book3.getType()%>&bookI=<%=book3.getImg()%>">Reserve</a>
          </div>
       </div>
       <% book4 = books.get(3); %>
       <div class="card card-4" style="background-image: url(<%= book4.getImg() %>);">
          
          <div class="info-book">
            <h2><b><%= book4.getName() %></b></h2>
            <p><%= book4.getType() %></p>
            <a href="Reserve-book.jsp?bookN=<%=book4.getName()%>&bookW=<%=book4.getWriter()%>&bookT=<%=book4.getType()%>&bookI=<%=book4.getImg()%>">Reserve</a>
          </div>
       </div>
       <% book5 = books.get(4); %>
       <div class="card card-5" style="background-image: url(<%= book5.getImg() %>);">     
          <div class="info-book">
            <h2><b><%= book5.getName() %></b></h2>
            <p><%= book5.getType() %></p>
            <a href="Reserve-book.jsp?bookN=<%=book5.getName()%>&bookW=<%=book5.getWriter()%>&bookT=<%=book5.getType()%>&bookI=<%=book5.getImg()%>">Reserve</a>
          </div>
       </div>
    </div>
 </div>
 <script>
  $(".carousel").owlCarousel({
    margin: 20,
    loop: true,
    autoplay: true,
    autoplayTimeout: 2000,
    autoplayHoverPause: true,
    responsive: {
      0:{
        items:1,
        nav: false
      },
      600:{
        items:2,
        nav: false
      },
      1000:{
        items:3,
        nav: false
      }
    }
  });
</script>

</body>
</html>