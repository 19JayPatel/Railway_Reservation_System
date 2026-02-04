import java.io.IOException;
import java.sql.*;

import db.DBConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/AdminInsertServlet")
public class AdminInsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();
            if (con == null) {
                response.getWriter().println("DB connection failed!");
                return;
            }

            String sql = "INSERT INTO admin (username, password) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                response.setContentType("text/html");
                response.getWriter().println("<script type='text/javascript'>");
                response.getWriter().println("alert('Admin registered successfully!');");
                response.getWriter().println("location='adminLogin.jsp';"); // ✅ Corrected filename
                response.getWriter().println("</script>");
            }
            else {
                response.getWriter().println("Failed to register admin.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}