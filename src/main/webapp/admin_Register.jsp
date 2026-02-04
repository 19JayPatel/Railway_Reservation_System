<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f0f2f5;
        }
        .register-card {
            max-width: 400px;
            margin: 80px auto;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            border-radius: 12px;
            background-color: #fff;
        }
    </style>
</head>
<body>

<div class="register-card">
    <h3 class="text-center mb-4">📝 Admin Register</h3>
    <form action="AdminInsertServlet" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">👤 Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter a username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">🔒 Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter a password" required>
        </div>
        <button type="submit" class="btn btn-success w-100">Register</button>
        <p class="text-center mt-3">
    		Already have an account?&nbsp;<a href="adminLogin.jsp">Login</a>
		</p>
    </form>
</div>

</body>
</html>
