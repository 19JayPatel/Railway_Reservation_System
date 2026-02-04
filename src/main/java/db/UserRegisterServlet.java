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
@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        // Database connection and query
        Connection con = null;
        PreparedStatement psCheck = null;
        PreparedStatement psInsert = null;

        try {
            con = DBConnection.getConnection();
            if (con == null) {
                response.getWriter().println("Database connection failed!");
                return;
            }

            // Check if the email already exists
            String checkSql = "SELECT * FROM users WHERE email = ?";
            psCheck = con.prepareStatement(checkSql);
            psCheck.setString(1, email);
            ResultSet rs = psCheck.executeQuery();

            if (rs.next()) {
                // Email already exists
                response.getWriter().println("<script type='text/javascript'>");
                response.getWriter().println("alert('Email already registered. Please use a different one.');");
                response.getWriter().println("location='user_Register.jsp';");
                response.getWriter().println("</script>");
            } else {
                // Insert the new user
                String insertSql = "INSERT INTO users (name, email, password, phone, address) VALUES (?, ?, ?, ?, ?)";
                psInsert = con.prepareStatement(insertSql);
                psInsert.setString(1, name);
                psInsert.setString(2, email);
                psInsert.setString(3, password);
                psInsert.setString(4, phone);
                psInsert.setString(5, address);

                int rows = psInsert.executeUpdate();

                if (rows > 0) {
                    response.sendRedirect("user_Register.jsp?success=1");
                } else {
                    response.getWriter().println("<script type='text/javascript'>");
                    response.getWriter().println("alert('Registration failed! Try again.');");
                    response.getWriter().println("location='user_Register.jsp';");
                    response.getWriter().println("</script>");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            try {
                if (psCheck != null) psCheck.close();
                if (psInsert != null) psInsert.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
