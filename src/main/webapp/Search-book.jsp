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
     <title>
           Search a Book Page
     </title>
    <!-- Google Font: Source Sans Pro -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=KoHo:wght@200;400&family=Pattaya&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@500&display=swap" rel="stylesheet">
    <!--Style -->
      <link rel="stylesheet" href="home.css">
      <link rel="stylesheet" href="css/bootstrap.css">
      <script src="js/bootstrap.js"></script>

    </head>
    <body>
        <section class="header">
            <nav>
                <ul class="a1">
                  <li><a href="index.html"><img src="img/logo-Uni.png"></a></li>
                  <li><a href="#" class="nav-link"><h1>University Library</h1></a>
                </ul>
                <div class="nav--links">
                  <ul>
                    <li>
                      <a href="Home.jsp">Home</a>
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
            <div class="search-box">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" name="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                  </form>
            </div>
            <div class="box-table-search">
            <%
               String search = request.getParameter("search");
               List<Book> books = null;
               if(search != null){
               books = BooksManager.SelectBooks(search);
            %>
                <table class="content-table">
                    <thead>
                      <tr>
                        <th>Name Book</th>
                        <th>Writer</th>
                        <th>category</th>
                        <th>Function</th>
                      </tr>
                    </thead>
                    <tbody>
                    <%for(Book book:books) {%>
                      <tr>
                        <td><%= book.getName() %></td>
                        <td><%= book.getWriter() %></td>
                        <td><%= book.getType() %></td>
                        <td class="btn---link"><a href="Reserve-book.jsp?bookN=<%=book.getName()%>&bookW=<%=book.getWriter()%>&bookT=<%=book.getType()%>&bookI=<%=book.getImg()%>">reserve</a></td>
                      </tr>
                      <%} %>
                    </tbody>
                    <%} %>
                  </table>
             </div>
        </section>
    </body>
</html>