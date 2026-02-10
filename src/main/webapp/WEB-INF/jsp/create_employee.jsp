<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Create Employee</title>

<!-- Bootstrap + Icons -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
      rel="stylesheet">

<style>

/* ===== Background Gradient ===== */
body{
    height:100vh;
    background: linear-gradient(135deg,#1d2671,#c33764);
    display:flex;
    align-items:center;
    justify-content:center;
    font-family: Arial, Helvetica, sans-serif;
}

/* ===== Glass Card ===== */
.card{
    width:100%;
    max-width:500px;
    border:none;
    border-radius:20px;
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(15px);
    box-shadow:0 8px 32px rgba(0,0,0,0.3);
    color:white;
}

/* ===== Input Style ===== */
.form-control{
    border-radius:10px;
    border:none;
    padding:12px;
}

.form-control:focus{
    box-shadow:0 0 5px #fff;
}

/* ===== Button ===== */
.btn-custom{
    background:#00ffcc;
    border:none;
    color:black;
    font-weight:bold;
    border-radius:30px;
    padding:10px 30px;
    transition:0.3s;
}

.btn-custom:hover{
    background:white;
    transform:scale(1.05);
}

h3{
    font-weight:bold;
}

</style>

</head>

<body>

<div class="card p-4">

```
<h3 class="text-center mb-4">
    <i class="bi bi-person-plus-fill"></i>
    Add Employee
</h3>

<!-- ===== FORM ===== -->
<form action="${pageContext.request.contextPath}/employees"
      method="post">

    <!-- First Name -->
    <div class="mb-3">
        <label class="form-label">
            <i class="bi bi-person"></i> First Name
        </label>
        <input type="text"
               name="firstName"
               class="form-control"
               placeholder="Enter First Name"
               required>
    </div>

    <!-- Last Name -->
    <div class="mb-3">
        <label class="form-label">
            <i class="bi bi-person"></i> Last Name
        </label>
        <input type="text"
               name="lastName"
               class="form-control"
               placeholder="Enter Last Name"
               required>
    </div>

    <!-- Email -->
    <div class="mb-3">
        <label class="form-label">
            <i class="bi bi-envelope"></i> Email
        </label>
        <input type="email"
               name="email"
               class="form-control"
               placeholder="Enter Email"
               required>
    </div>

    <!-- Department -->
    <div class="mb-3">
        <label class="form-label">
            <i class="bi bi-building"></i> Department
        </label>
        <input type="text"
               name="department"
               class="form-control"
               placeholder="Enter Department"
               required>
    </div>

    <!-- Button -->
    <div class="text-center mt-4">
        <button type="submit" class="btn btn-custom">
            <i class="bi bi-save"></i>
            Save Employee
        </button>
    </div>

</form>
```

</div>

</body>
</html>
