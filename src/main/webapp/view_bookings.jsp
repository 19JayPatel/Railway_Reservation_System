<%@ page import="java.sql.*" %>
<%@ page import="db.DBConnection" %>
<%@ page import="java.sql.*" %>

<jsp:include page="header.jsp" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .container {
            padding: 30px 50px;
            max-width: 1200px;
            margin: 0 auto;
            box-sizing: border-box;
        }

        @media (max-width: 768px) {
            .container { padding: 16px; }
            table th, table td { padding: 8px 10px; font-size: 14px; }
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #dddddd;
        }

        th {
            background-color: #2c3e50;
            color: #ffffff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e8f8ff;
        }

        .cancel-button {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
        }

        .cancel-button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>My Bookings</h2>
    <p style="max-width:900px;margin:0 auto 18px;color:#33475b;">Review your active and past bookings below. You can cancel eligible tickets; cancelled bookings will be reflected here.</p>

    <div class="table-responsive">
    <table>
        <thead>
        <tr>
            <th>Booking ID</th>
            <th>Passenger Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Train No</th>
            <th>Train Name</th>
            <th>From</th>
            <th>To</th>
            <th>Date</th>
            <th>Seats</th>
            <th>Total Fare</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            try {
                Connection con = DBConnection.getConnection();
                String sql = "SELECT b.id, b.passenger_name, b.age, b.gender, b.train_no, b.travel_date, b.seats, b.total_fare, " +
                             "t.train_name, t.from_station, t.to_station " +
                             "FROM bookings b JOIN trains t ON b.train_no = t.train_no";

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    int bookingId = rs.getInt("id");
        %>
        <tr>
            <td><%= bookingId %></td>
            <td><%= rs.getString("passenger_name") %></td>
            <td><%= rs.getInt("age") %></td>
            <td><%= rs.getString("gender") %></td>
            <td><%= rs.getString("train_no") %></td>
            <td><%= rs.getString("train_name") %></td>
            <td><%= rs.getString("from_station") %></td>
            <td><%= rs.getString("to_station") %></td>
            <td><%= rs.getDate("travel_date") %></td>
            <td><%= rs.getInt("seats") %></td>
            <td><%= rs.getDouble("total_fare") %></td>
            <td>
                <form action="CancelTicketServlet" method="post"
                      onsubmit="return confirm('Are you sure you want to cancel this ticket?');" style="display:inline;">
                    <input type="hidden" name="ticket_id" value="<%= bookingId %>">
                    <button type="submit" class="cancel-button">Cancel</button>
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='12'>Error: " + e.getMessage() + "</td></tr>");
            }
        %>
        </tbody>
    </table>
    </div>
</div>

</body>
</html>

<jsp:include page="footer.jsp" />
