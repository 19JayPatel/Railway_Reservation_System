package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/railway_reservation_system", "root", "");
        } catch (Exception e) {
            e.printStackTrace(); // This will show the reason why connection is null
        }
        return conn;
    }
}
