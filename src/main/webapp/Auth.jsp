<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Log in Page</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=KoHo:wght@200;400&family=Pattaya&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@500&display=swap" rel="stylesheet">
   <!-- Css bootstrap -->
  <link rel="stylesheet" href="css/bootstrap.css">

  <link rel="stylesheet" href="RLF.css">
  <!-- script-->
  
  <script  src="js/bootstrap.js"></script>

</head>
<body>
  <section>
    <div class="logo">
         <ul class="a1">
           <li><a href="#"><img src="img/logo-Uni.png"></a></li>
           <li><a href="#" class="nav-link"><h1>University Library</h1></a></li>
         </ul>
    </div>
    
      <div class="card-login">
        <div class="card-color">
          <h2 class="h">Sign in to your account</h2>
        </div>
        <div class="card-body">
        <%if(request.getParameter("res") != null){
        	%><div>
            <p style="text-align: center;color: rgb(233, 5, 5);font-weight: bold;">Code Apogee Or Password incorrect</p>
          </div><%
        }
        %>
  
          <form action="Auth" method="post">
            <div class="mb-3">
              <label  class="form-label">Code Apogee</label>
              <input type="text" class="form-control"  name="code" required>
            </div>
            <!--password-->
            <div class="mb-3">
              <label class="form-label">Password</label>
              <input type="password" class="form-control" name="pass" required>
            </div>
            <div class="row">
              <div class="col-8">
                <div class="form-check">
                  <input type="checkbox" id="agreeTerms" name="terms" value="agree">
                  <label for="agreeTerms">
                    Remember Me
                  </label>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-4 btn--Pos">
                <button type="submit" class="">Login</button>
              </div>
              <!-- /.col -->
            </div>
          </form>
  
  
  
          <p class="mb-1 nav--link">
            <a href="forget-password.jsp">I forgot my password</a>
          </p>
          <p class="mb-0 nav--link">
            <a href="RS.jsp">Register a new Account</a>
          </p>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
  </section>
 




</body>
</html>
