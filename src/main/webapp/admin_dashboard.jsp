<%@ page import="java.sql.*,java.util.*" %>
<%
  String admin = (String) session.getAttribute("admin");
  if (admin == null) {
    response.sendRedirect("admin_login.jsp");
  }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            background: #f8f9fa;
        }

        .dashboard-container {
            max-width: 700px;
            margin: 60px auto;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        .dashboard-container h2 {
            margin-bottom: 30px;
        }

        .dashboard-container .list-group-item {
            font-size: 1.1rem;
        }

        .logout-btn {
            float: right;
        }
    </style>
</head>
<body>

<div class="container dashboard-container text-center">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="mb-0">Welcome, <%= admin %></h2>
        <form action="logout.jsp" method="post">
            <button type="submit" class="btn btn-outline-danger logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</button>
        </form>
    </div>

    <div class="list-group">
        <a href="add_train.jsp" class="list-group-item list-group-item-action">
            <i class="fas fa-plus-circle"></i> Add Train
        </a>
        <a href="view_trains.jsp" class="list-group-item list-group-item-action">
            <i class="fas fa-train"></i> View/Edit/Delete Trains
        </a>
        <a href="view_bookings.jsp" class="list-group-item list-group-item-action">
            <i class="fas fa-ticket-alt"></i> View Bookings
        </a>
        <a href="view_users.jsp" class="list-group-item list-group-item-action">
            <i class="fas fa-users"></i> View Users
        </a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
