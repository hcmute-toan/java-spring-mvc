<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Detail ${id}</title>
    <!-- Latest compiled and minified CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- <link rel="stylesheet" href="/css/demo.css"> -->
  </head>
  <body>
    <form:form action="/admin/user/delete/${user.id}" method="post">
        <div class="container mt-4">
            <div class="d-flex justify-content-between align-items-center">
                <h2 class="mb-3">User Detail With id = ${user.id}</h2>
            </div>
            <hr>
            <div class="alert alert-danger" role="alert">
                Are you sure you want to delete this user?
            </div>
            <hr>
            <button class="btn btn-danger" type="submit">Delete</button>
        </div>
    </form:form>    
  </body>
</html>
