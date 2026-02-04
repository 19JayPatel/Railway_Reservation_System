<%@ page import="db.DBConnection" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Users</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background-color: #f4f4f4;
        }
        .table-container {
            margin: auto;
            max-width: 1000px;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="table-container">
        <h2>User List</h2>
        <p style="max-width:900px;margin:0 auto 16px;color:#33475b;">Registered users are listed here. Use this view to review user details maintained by the system.</p>
        <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        Connection con = DBConnection.getConnection();
                        String sql = "SELECT id, name, email, phone, address FROM users";
                        PreparedStatement ps = con.prepareStatement(sql);
                        ResultSet rs = ps.executeQuery();
                        
                        while (rs.next()) {
                %>
                    <tr>
                        <td><%= rs.getInt("id") %></td>
                        <td><%= rs.getString("name") %></td>
                        <td><%= rs.getString("email") %></td>
                        <td><%= rs.getString("phone") %></td>
                        <td><%= rs.getString("address") %></td>
                    </tr>
                <%
                        }
                        con.close();
                    } catch (Exception e) {
                        out.println("<tr><td colspan='5'>Error: " + e.getMessage() + "</td></tr>");
                    }
                %>
            </tbody>
        </table>
        </div>
    </div>

    <!-- Bootstrap Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
