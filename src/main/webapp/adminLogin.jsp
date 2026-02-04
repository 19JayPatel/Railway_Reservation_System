<%@ page import="db.DBConnection" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f0f2f5;
        }
        .login-card {
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

<div class="login-card">
    <h3 class="text-center mb-4">🔐 Admin Login</h3>
    <form method="post" action="">
        <div class="mb-3">
            <label for="username" class="form-label">👤 Username</label>
            <input type="text" class="form-control" name="username" id="username" placeholder="Enter admin username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">🔑 Password</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="Enter password" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
        <p class="text-center mt-3">
    		Don't have an account? <a href="admin_Register.jsp">Register here</a>
		</p>
        
    </form>

    <%
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");

        if (uname != null && pass != null) {
            try {
                Connection con = DBConnection.getConnection();
                String sql = "SELECT * FROM admin WHERE username=? AND password=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, uname);
                ps.setString(2, pass);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    session.setAttribute("admin", uname);
                    response.sendRedirect("admin_dashboard.jsp");
                } else {
    %>
                    <script>
                        alert("⚠️ Admin not found! Redirecting to registration page...");
                        window.location.href = "admin_Register.jsp";
                    </script>
    <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
    %>
                <div class="alert alert-danger mt-3">Error: <%= e.getMessage() %></div>
    <%
            }
        }
    %>
</div>

</body>
</html>
