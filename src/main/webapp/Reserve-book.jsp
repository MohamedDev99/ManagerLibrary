<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
     <title>
           Reserve Book Page
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
           <div class="reserve-book">
           <% if(request.getParameter("bookI") != null){ %>
               <div class="book-img" style="background-image: url('<%=request.getParameter("bookI")%>');">
                   <div class="info-imgBook">
                       <h2><%=request.getParameter("bookN")%></h2>
                       <p><%=request.getParameter("bookT")%></p>
                       <b><%=request.getParameter("bookW")%>r</b>                      
                   </div>
               </div>
               <%} %>
               <div class="reserve-Form">
                <div class="addBook-formTitle">
                    <h2>Reserve a Book</h2>
                  </div>
                      <div class="addBook">
                      <%if(request.getParameter("res") != null){
        	            %><div>
                      <p style="text-align: center;color: rgb(233, 5, 5);font-weight: bold;">Something goes Wrong</p>
                         </div><%
                            }
                             %>
                          <form action="ReserveBook" method="post">
                            <!--Book Name-->
                            <div class="mb-3">
                                <label  class="form-label">Code Apogee</label>
                                <input type="text" class="form-control"  name="Code" required>
                                <input type="text" class="hide-input"  name="type" value="<%=request.getParameter("bookT")%>">
                            </div>
                            <!--Writer-->
                            <div class="mb-3">
                                <label  class="form-label">Email</label>
                                <input type="email" class="form-control" name="email" required>
                                <input type="text" class="hide-input"  name="book" value="<%=request.getParameter("bookN")%>">
                            </div>
                            <!--Cover-->
                            <div class="mb-3">
                                <label  class="form-label">Name</label>
                                <input type="text" class="form-control" name="FName" required>
                            </div>
                            
                            <div class="reserveBook-btn">
                                <button type="submit">Reserve</button>
                            </div>
                          </form>
                       </div>
                 </div>
                </div>
        </section>
    </body>
</html>