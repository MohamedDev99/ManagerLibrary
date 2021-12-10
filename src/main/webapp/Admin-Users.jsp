<%@page import="DAO.StudentManager"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="Model.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>
           Admin-Users
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
                    <li style="background-color: rgb(0, 132, 255);border-radius: 5px; padding: 7px 10px;">
                      <a href="Admin-Users.jsp"><b>List Users</b></a>
                    </li>
                    <li>
                      <a href="Admin-AddBooks.jsp"><b>AddBooks</b></a>  
                    </li>
                  </ul>                </div>
              </nav>
             <div class="box-table-list">
                <%
               String search = request.getParameter("search");
               List<Student> sts = null;
               if(search != null){
               
               if(request.getParameter("op") == "delete" && request.getParameter("id") != null ){  
            	   int n = StudentManager.deleteStudent(request.getParameter("id"));
            	   sts = StudentManager.SelectStudents(search);
            %>
                <table class="content-table">
                    <thead>
                      <tr>
                        <th>Code Apogee</th>
                        <th>Full Name</th>
                        <th>Password</th>
                        <th>Email</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                    <%for(Student st:sts) {%>
                      <tr>
                        <td><%= st.getId() %></td>
                        <td><%= st.getName() %></td>
                        <td><%= st.getPass() %></td>
                        <td><%= st.getEmail() %></td>
                        <td class="btn---link"><a href="Admin-listbooks.jsp?op=delete&id=<%=st.getId()%>&search=<%=st.getId()%>">delete</a></td>
                      </tr>
                      <%} %>
                    </tbody>

                    <%}else{
                    	 sts = StudentManager.SelectStudents(search);
                    	%>
                    	<table class="content-table">
                    <thead>
                      <tr>
                        <th>Name Book</th>
                        <th>Writer</th>
                        <th>category</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                    <%for(Student st:sts) {%>
                      <tr>
                        <td><%= st.getId() %></td>
                        <td><%= st.getName() %></td>
                        <td><%= st.getPass() %></td>
                        <td><%= st.getEmail() %></td>
                        <td class="btn---link"><a href="Admin-listbooks.jsp?op=delete&id=<%=st.getId()%>&search=<%=st.getId()%>">delete</a></td>
                      </tr>
                      <%} %>
                    </tbody>
                   <%}} %>
                  </table>
             </div>
        </section>
        
    </body>
</html>