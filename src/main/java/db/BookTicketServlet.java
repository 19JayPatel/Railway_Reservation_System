package db;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/BookTicketServlet")
public class BookTicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String trainNo = request.getParameter("train_no");
        String passengerName = request.getParameter("passenger_name");
        String ageStr = request.getParameter("age");
        String gender = request.getParameter("gender");
        String travelDateStr = request.getParameter("travel_date");
        String seatsStr = request.getParameter("seats");

        try {
            if (trainNo == null || passengerName == null || ageStr == null || gender == null || travelDateStr == null || seatsStr == null) {
                response.getWriter().println("Error: One or more fields are missing.");
                return;
            }

            int age = Integer.parseInt(ageStr);
            int seats = Integer.parseInt(seatsStr);
            Date travelDate = Date.valueOf(travelDateStr);

            // 1. Get fare from trains table
            Connection con = DBConnection.getConnection();
            String fareQuery = "SELECT fare FROM trains WHERE train_no = ?";
            PreparedStatement psFare = con.prepareStatement(fareQuery);
            psFare.setString(1, trainNo);
            ResultSet rsFare = psFare.executeQuery();

            double farePerSeat = 0;
            if (rsFare.next()) {
                farePerSeat = rsFare.getDouble("fare");
            } else {
                response.getWriter().println("Error: Invalid train number.");
                return;
            }

            double totalFare = farePerSeat * seats;

            // 2. Insert booking
            String sql = "INSERT INTO bookings (train_no, passenger_name, age, gender, travel_date, seats, total_fare) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement psInsert = con.prepareStatement(sql);
            psInsert.setString(1, trainNo);
            psInsert.setString(2, passengerName);
            psInsert.setInt(3, age);
            psInsert.setString(4, gender);
            psInsert.setDate(5, travelDate);
            psInsert.setInt(6, seats);
            psInsert.setDouble(7, totalFare);

            int rows = psInsert.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("view_bookings.jsp");
            } else {
                response.getWriter().println("Failed to book ticket.");
            }

            // Cleanup
            psFare.close();
            psInsert.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
