<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
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
        <h2 class="mb-3">Table users</h2>
        <a href="/admin/user/create" class="btn btn-primary mb-3"
          >Create a User</a
        >
      </div>
      <table class="table table-bordered text-center table-hover">
        <thead class="table-light">
          <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Full Name</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="user" items="${users}">
            <tr>
              <td>${user.id}</td>
              <td>${user.email}</td>
              <td>${user.fullName}</td>
              <td>
                <a href="/admin/user/${user.id}" class="btn btn-success btn-sm"
                  >View</a
                >
                <a
                  href="/admin/user/update/${user.id}"
                  class="btn btn-warning btn-sm"
                  >Update</a
                >
                <a
                  href="/admin/user/delete/${user.id}"
                  class="btn btn-danger btn-sm"
                  onclick="return confirm('Are you sure?')"
                  >Delete</a
                >
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
