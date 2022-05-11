<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>


<head>
    <title>Employee JSP Management Application</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
<div id="myModal" class="modal fade">
    <div class="modal-dialog modal-confirm">
        <div class="modal-content">
            <div class="modal-header flex-column">
                <h4 class="modal-title w-100">Are you sure?</h4>
            </div>
            <div class="modal-body">
                <p>Do you really want to delete this record? This process cannot be undone.</p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="http://localhost:8080/jspCRUD_war/list" class="navbar-brand"> Employee Management App </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Employees</a></li>
        </ul>
        <ul class="navbar-nav">
            <li><a href="logout" class="nav-link" >Logout</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="row">

    <div class="container">
        <h3 class="text-center">List of Employees</h3>
        <hr>
        <div class="container text-left">

            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Employee</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Date of Birth</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <!--   for (Todo todo: todos) {  -->
            <c:forEach var="employee" items="${listEmployee}">

                <tr>
                    <td>
                        <c:out value="${employee.id}" />
                    </td>
                    <td>
                        <c:out value="${employee.first_name}" />
                    </td>
                    <td>
                        <c:out value="${employee.last_name}" />
                    </td>
                    <td>
                        <c:out value="${employee.date_of_birth}" />
                    </td>
                    <td><a href="edit?id=<c:out value='${employee.id}' />" class="btn btn-outline-primary">Edit</a>
                        <a data-href="delete?id=<c:out value='${employee.id}' />" data-toggle="modal"  data-target="#myModal" class="btn btn-outline-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            <!-- } -->
            </tbody>

        </table>
    </div>
</div>
<script>
    $('#myModal').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    });
</script>
</body>

</html>