import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.DBConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddTrainServlet")
public class AddTrainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String trainNo = request.getParameter("train_no");
        String trainName = request.getParameter("train_name");
        String from = request.getParameter("from_station");
        String to = request.getParameter("to_station");
        String departure = request.getParameter("departure_time");
        String arrival = request.getParameter("arrival_time");
        String fareStr = request.getParameter("fare");

        try {
            double fare = Double.parseDouble(fareStr);

            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO trains (train_no, train_name, from_station, to_station, departure_time, arrival_time, fare) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, trainNo);
            ps.setString(2, trainName);
            ps.setString(3, from);
            ps.setString(4, to);
            ps.setString(5, departure);
            ps.setString(6, arrival);
            ps.setDouble(7, fare);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("view_trains.jsp");
            } else {
                response.getWriter().println("Failed to add train.");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
