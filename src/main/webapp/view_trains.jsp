<%@ page import="db.DBConnection" %>
<%@ page import="java.sql.*" %>

<%@ page import="java.util.*" %>

<%
    String admin = (String) session.getAttribute("admin");
    if (admin == null) {
        response.sendRedirect("adminLogin.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Trains</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
</head>
<body style="background-color:#f8f9fa;">

<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-dark text-white">
            <h4><i class="fas fa-train"></i> Train List</h4>
        </div>
        <div class="card-body">
            <p style="color:#33475b; margin-bottom:14px;">Manage the train records below. Use the action buttons to edit or remove existing train entries.</p>
            <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Train No</th>
                        <th>Train Name</th>
                        <th>Start Station</th>
                        <th>End Station</th>
                        <th>Start Time</th>
                        <th>End Time</th>
                        <th>Fare (&#8377;)</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Connection con = DBConnection.getConnection();
                            String sql = "SELECT * FROM trains";
                            PreparedStatement ps = con.prepareStatement(sql);
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                    %>
                        <tr>
                            <td><%= rs.getInt("train_no") %></td>
                            <td><%= rs.getString("train_name") %></td>
                            <td><%= rs.getString("from_station") %></td>
                            <td><%= rs.getString("to_station") %></td>
                            <td><%= rs.getString("departure_time") %></td>
                            <td><%= rs.getString("arrival_time") %></td>
                            <td><%= rs.getInt("fare") %> (&#8377;)</td>
                            <td>
                                <a href="edit_train.jsp?id=<%= rs.getInt("id") %>" class="btn btn-sm btn-warning">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <a href="DeleteTrainServlet?id=<%= rs.getInt("id") %>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">
									  <i class="fas fa-trash-alt"></i>
								</a>
                                
                            </td>
                        </tr>
                    <%
                            }
                            con.close();
                        } catch (Exception e) {
                            out.println("<tr><td colspan='9' class='text-danger'>Error: " + e.getMessage() + "</td></tr>");
                        }
                    %>
                </tbody>
            </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>
