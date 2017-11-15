package control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Travel;

public class TravelDAO {

    private Connection connection;
    private PreparedStatement pstmt;
    private String sql;

    public TravelDAO() throws ClassNotFoundException {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void insert(Travel travel) {
        sql = "insert into travel "
                + "(name, phone, datefrom, dateto, origin, destination, people) "
                + "values (?, ?, ?, ?, ?, ?, ?)";
        try {
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, travel.getName());
            pstmt.setString(2, travel.getPhone());
            pstmt.setString(3, travel.getDateFrom());
            pstmt.setString(4, travel.getDateTo());
            pstmt.setString(5, travel.getOrigin());
            pstmt.setString(6, travel.getDestination());
            pstmt.setInt(7, travel.getPeople());

            pstmt.execute();
            pstmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
