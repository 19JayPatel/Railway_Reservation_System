<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.DBConnection" %>
<%@ page import="java.sql.*" %>

<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Train Schedule</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container mt-5">
    <h2 class="text-center mb-4">Train Schedule</h2>
    <p class="text-center" style="max-width:900px;margin:0 auto 18px;color:#33475b;">Browse departure and arrival times for all trains. Use the schedule to plan travel and check fare information before booking.</p>
    <div class="table-responsive">
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
               <th>Train No</th>
               <th>Train Name</th>
               <th>Start Station</th>
               <th>End Station</th>
               <th>Start Time</th>
               <th>End Time</th>
               <th>Fare (&#8377;)</th>
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
            </tr>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    out.println("<tr><td colspan='8' class='text-danger'>Error: " + e.getMessage() + "</td></tr>");
                }
            %>
        </tbody>
    </table>
    </div>

    <!-- Book Ticket Button -->
    <div class="text-center mt-4">
        <a href="book_ticket.jsp" class="btn btn-success btn-lg">Book Ticket</a>
    </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
