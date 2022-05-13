<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>User Register</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
    <div>
      <a href="http://localhost:8080/jspCRUD_war/list" class="navbar-brand"> Employee Management App </a>
    </div>
  </nav>
</head>
<body>
<div class="container col-md-5" >
  <h1 style="margin: 10px;">Fill in your credentials </h1>
  <div class="card">
    <div class="card-body">
      <form action="<%=request.getContextPath()%>/register" method="post">
        <div class="form-group">
          <label for="username" class="col-md-4 col-form-label">Username</label>
          <div class="col-sm-7">
            <input id="username" type="text" class="form-control" name="username" placeholder="Enter your username" required>
          </div>
        </div>
        <div class="form-group">
          <label for="password" class="col-md-4 col-form-label">Password</label>
          <div class="col-sm-7">
            <input id="password" type="password" class="form-control" name="password" placeholder="Enter your password" required>
          </div>
        </div>
        <div class="form-group">
          <label for="first_name" class="col-md-4 col-form-label">First Name</label>
          <div class="col-sm-7">
            <input id="first_name" type="text" class="form-control" name="first_name" placeholder="Enter your first name" required>
          </div>
        </div>
        <div class="form-group">
          <label for="last_name" class="col-md-4 col-form-label">Last Name</label>
          <div class="col-sm-7">
            <input id="last_name" type="text" class="form-control" name="last_name" placeholder="Enter your last name" required>
          </div>
        </div>
        <button type="submit" class="btn btn-success" style="margin-left: 15px;">REGISTER</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>