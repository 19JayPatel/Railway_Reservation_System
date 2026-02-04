package db;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/CancelTicketServlet")
public class CancelTicketServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ticketId = Integer.parseInt(request.getParameter("ticket_id"));

        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getConnection();

            if (con == null) {
                response.getWriter().println("Database connection failed!");
                return;
            }

            String deleteSql = "DELETE FROM bookings WHERE id = ?";
            ps = con.prepareStatement(deleteSql);
            ps.setInt(1, ticketId);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("view_bookings.jsp?cancel=1");
            } else {
                response.sendRedirect("view_bookings.jsp?cancel=0");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
