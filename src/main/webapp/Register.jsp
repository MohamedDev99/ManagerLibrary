<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Page</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=KoHo:wght@200;400&family=Pattaya&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@500&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="RLF.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
</head>
<body>
<section class="containerRLF">
    <div class="logo-signup">
        <ul class="a1">
            <li><a href="#"><img src="img/logo-Uni.png"></a></li>
            <li><a href="#" class="nav-link"><h1><b>University Library</b></h1></a></li>
        </ul>
  </div>
    <div class="card-signup">
        <div class="text-center card-color">
            <p class="h2">Register a New Account</p>
        </div>
        <div class="card-body">
                 <!--form register a new student-->
                 <form action="Register" method="post">
                    <!--full name-->
                    <div class="mb-3">
                        <label  class="form-label">FullName</label>
                        <input type="text" class="form-control" name="Fname" required>
                    </div>
                    <!--Code apogee-->
                    <div class="mb-3">
                        <label  class="form-label">Code Apogee</label>
                        <input type="text" class="form-control" name="Capogee" required>
                    </div>
                    <!--Email-->
                    <div class="mb-3">
                        <label  class="form-label">Email</label>
                        <input type="email" class="form-control" name="email" required>
                    </div>
                    <!--password-->
                    <div class="mb-3">
                        <label  class="form-label">Password</label>
                        <input type="password" class="form-control" name="pass" required>
                    </div>
                    <!--Check me out-->
                    <div class="mb-3" >
                        <div class="form-check nav--link">
                            <input type="checkbox" id="agreeTerms" name="terms" value="agree" required>
                            <label for="agreeTerms">
                                I agree to the <a href="#">terms</a>
                            </label>
                        </div>
                    </div>
                    <!--button Register-->
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Register</button>
                    </div>
                    <div class="nav--link">
                        <a href="LoginS.jsp" class="text-center">I already have a Account</a>
                    </div>
        
                </form>
        </div>
    </div>
</section>
</body>
</html>





