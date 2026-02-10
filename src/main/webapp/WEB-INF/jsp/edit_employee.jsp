<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<!-- Bootstrap + Icons -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
      rel="stylesheet">

<style>

/* ===== Layout ===== */
body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:#f4f6f9;
}

/* ===== Sidebar ===== */
.sidebar{
    width:220px;
    height:100vh;
    position:fixed;
    background:linear-gradient(180deg,#0f2027,#203a43,#2c5364);
    color:white;
    padding-top:20px;
}

.sidebar h4{
    text-align:center;
    margin-bottom:30px;
}

.sidebar a{
    display:block;
    color:white;
    padding:12px 20px;
    text-decoration:none;
    transition:0.3s;
}

.sidebar a:hover{
    background:rgba(255,255,255,0.2);
}

/* ===== Content ===== */
.content{
    margin-left:220px;
    padding:30px;
}

/* ===== Card ===== */
.card{
    border:none;
    border-radius:15px;
    box-shadow:0 4px 20px rgba(0,0,0,0.1);
}

/* ===== Header ===== */
.page-header{
    background:linear-gradient(90deg,#ff9966,#ff5e62);
    color:white;
    padding:15px;
    border-radius:10px;
    margin-bottom:20px;
}

/* ===== Buttons ===== */
.btn-update{
    background:#ff9800;
    border:none;
    padding:10px 25px;
    font-weight:bold;
}

.btn-cancel{
    background:#6c757d;
    border:none;
    padding:10px 25px;
}

</style>

</head>

<body>

<!-- ===== Sidebar ===== -->

<div class="sidebar">
    <h4>EMS</h4>
    <a href="#"><i class="bi bi-speedometer2"></i> Dashboard</a>
    <a href="#"><i class="bi bi-people"></i> Employees</a>
    <a href="#"><i class="bi bi-person-plus"></i> Add Employee</a>
</div>

<!-- ===== Main Content ===== -->

<div class="content">

```
<!-- Page Header -->
<div class="page-header">
    <h3><i class="bi bi-pencil-square"></i> Update Employee</h3>
</div>

<!-- Form Card -->
<div class="card p-4">

    <form action="${pageContext.request.contextPath}/employees/${employee.id}"
          method="post">

        <div class="row">

            <!-- First Name -->
            <div class="col-md-6 mb-3">
                <label class="form-label">First Name</label>
                <input type="text"
                       name="firstName"
                       class="form-control"
                       value="${employee.firstName}"
                       required>
            </div>

            <!-- Last Name -->
            <div class="col-md-6 mb-3">
                <label class="form-label">Last Name</label>
                <input type="text"
                       name="lastName"
                       class="form-control"
                       value="${employee.lastName}"
                       required>
            </div>

        </div>

        <!-- Email -->
        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email"
                   name="email"
                   class="form-control"
                   value="${employee.email}"
                   required>
        </div>

        <!-- Department -->
        <div class="mb-3">
            <label class="form-label">Department</label>
            <input type="text"
                   name="department"
                   class="form-control"
                   value="${employee.department}"
                   required>
        </div>

        <!-- Buttons -->
        <div class="text-center mt-4">

            <button type="submit" class="btn btn-update">
                <i class="bi bi-check-circle"></i>
                Update
            </button>

            <a href="${pageContext.request.contextPath}/employees"
               class="btn btn-cancel ms-2">
               <i class="bi bi-x-circle"></i>
               Cancel
            </a>

        </div>

    </form>

</div>
```

</div>

</body>
</html>
