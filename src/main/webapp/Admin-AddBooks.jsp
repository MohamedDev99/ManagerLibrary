<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>
           Admin-AddBooks
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
        <section class="admin-header">
            <nav class="admin-nav">
                <div class="admin-menu-left admin-menu">
                  <ul>
                    <li>
                      <a href="Admin.jsp"><b>Home</b></a>
                    </li>
                    <li>
                      <a href="Admin-listbook.jsp"><b>Library</b></a>
                    </li>
                  </ul>
                </div>
                  <ul class="admin-logo">
                      <li><a href="index.html"><img src="img/logo-Uni.png"></a></li>
                      <li><a href="#" class="nav-link"><h1><b>University Library</b></h1></a>
                  </ul>
                <div class="admin-menu-right admin-menu">
                  <ul>
                    <li>
                      <a href="Admin-Users.jsp"><b>Users</b></a>
                    </li>
                    <li style="background-color: rgb(0, 132, 255);border-radius: 5px; padding: 7px 10px;">
                      <a href="Admin-AddBooks.jsp"><b>AddBooks</b></a>  
                    </li>
                  </ul>
                </div>
              </nav>
              
              <div class="card-addBook">
                <div class="addBook-formTitle">
                  <div class="addBook">
                   <h2>Informations Book</h2>
                  </div>
                  <%if(request.getParameter("AddBook") != null){
        	%><div>
            <p style="text-align: center;color: rgb(233, 5, 5);font-weight: bold;">information  incorrect</p>
          </div><%
        }else{%>
        <div>
            <p style="text-align: center;color: rgb(32, 219, 15);font-weight: bold;">Successfully book added</p>
          </div>
        <% }%>
     
                      <form action="Admin" method="post">
                        <!--Book Name-->
                        <div class="mb-3">
                            <label  class="form-label">Book Name</label>
                            <input type="text" class="form-control" name="name" required>
                        </div>
                        <!--Writer-->
                        <div class="mb-3">
                            <label  class="form-label">Writer</label>
                            <input type="text" class="form-control" name="writer" required>
                        </div>
                        <!--Cover-->
                        <div class="mb-3">
                            <label  class="form-label">Cover of your book</label>
                            <input type="text" class="form-control" name="img" placeholder="https://www.example.com/imageName.jgp" required>
                        </div>
                        <!--Category-->
                        <div class="mb-3">
                            <label  class="form-label"></label>
                            <select class="form-select" aria-label="Default select example" name="type">
                                <option selected>Select Book category</option>
                                <option value="SMI">SMI</option>
                                <option value="SMA">SMA</option>
                                <option value="SMP">SMP</option>
                                <option value="SMC">SMC</option>
                                <option value="SMU">SMU</option>
                              </select>
                        </div>
                        <div class="addBook-btn">
                            <button type="submit">Add Book</button>
                        </div>
                      </form>
                  </div>
              </div>
              
        </section>
        
    </body>
</html>