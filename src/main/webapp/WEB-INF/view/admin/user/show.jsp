<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
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
    <div class="container mt-4">
      <div class="d-flex justify-content-between align-items-center">
        <h2 class="mb-3">User Detail With id = ${id}</h2>
      </div>
      <hr>
      <div class="card" style="width: 60%">
        <div class="card-header">User Information</div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">ID: ${user.id}</li>
          <li class="list-group-item">Email: ${user.email}</li>
          <li class="list-group-item">FullName: ${user.fullName}</li>
          <li class="list-group-item">Address: ${user.address}</li>
        </ul>
      </div>
      <hr>
      <a href="/admin/user" class="btn btn-success">Back</a>
    </div>
  </body>
</html>
