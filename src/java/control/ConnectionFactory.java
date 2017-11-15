package control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    private String user;
    private String password;
        
    public Connection getConnection() throws ClassNotFoundException {
        //user and password for the JDBC connection
        user = "root";
        password = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/travel_a", user, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
