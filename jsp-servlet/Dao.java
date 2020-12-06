package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Beans.*;
public class Dao {
    private String jdbcURL = "jdbc:mysql://localhost:3306/userdb?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "shameem";
    private static final String INSERT_LANGUAGES_SQL = "INSERT INTO languages" + "  (rollno, lang1, lang2, lang3, lang4, lang5) VALUES " + " (?, ?, ?, ?, ?, ?);";
    private static final String INSERT_CERTIFICATES_SQL = "INSERT INTO certificates" + "  (rollno, cert1, proof1, cert2, proof2,cert3, proof3,cert4, proof4,cert5, proof5) VALUES " + " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String SELECT_ALL_LANGUAGES = "select * from languages";
    private static final String SELECT_ALL_CERTIFICATES= "select * from certificates";
    public Dao() {}
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    public void insertLang(Languages user) throws SQLException {
        System.out.println(INSERT_LANGUAGES_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); 
        	PreparedStatement preparedStatement = connection.prepareStatement(INSERT_LANGUAGES_SQL)) {
            preparedStatement.setString(1, user.getRollno());
            preparedStatement.setString(2, user.getLang1());
            preparedStatement.setString(3, user.getLang2());
            preparedStatement.setString(4, user.getLang3());
            preparedStatement.setString(5, user.getLang4());
            preparedStatement.setString(6, user.getLang5());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    public void insertCert(Certificates user) throws SQLException {
        System.out.println(INSERT_CERTIFICATES_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); 
        	PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CERTIFICATES_SQL)) {
            preparedStatement.setString(1, user.getRollno());
            preparedStatement.setString(1, user.getRollno());
            preparedStatement.setString(2, user.getCert1());
            preparedStatement.setString(3, user.getProof1());
            preparedStatement.setString(4, user.getCert2());
            preparedStatement.setString(5, user.getProof2());
            preparedStatement.setString(6, user.getCert3());
            preparedStatement.setString(7, user.getProof3());
            preparedStatement.setString(8, user.getCert4());
            preparedStatement.setString(9, user.getProof4());
            preparedStatement.setString(10, user.getCert5());
            preparedStatement.setString(11, user.getProof5());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    public List < Certificates > selectAllLanguages() {
    	List < Certificates > students = new ArrayList < > ();
        try (Connection connection = getConnection();
        	PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CERTIFICATES);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String rollno = rs.getString("rollno");
                String cert1 = rs.getString("cert1");
                String proof1 = rs.getString("proof1");
                String cert2= rs.getString("cert2");
                String proof2 = rs.getString("proof2");
                String cert3 = rs.getString("cert3");
                String proof3 = rs.getString("proof3");
                String cert4 = rs.getString("cert4");
                String proof4 = rs.getString("proof4");
                String cert5= rs.getString("cert5");
                String proof5 = rs.getString("proof5");
                students.add(new Certificates(rollno,cert1,proof1,cert2,proof2,cert3,proof3,cert4,proof4,cert5,proof5));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return students;
    }
    public List < Languages > selectAllStudents() {
    	List < Languages > students = new ArrayList < > ();
        try (Connection connection = getConnection();
        	PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_LANGUAGES);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String rollno = rs.getString("rollno");
                String lang1 = rs.getString("lang1");
                String lang2 = rs.getString("lang2");
                String lang3 = rs.getString("lang3");
                String lang4 = rs.getString("lang4");
                String lang5 = rs.getString("lang5");
                students.add(new Languages(rollno, lang1,lang2, lang3,lang4,lang5));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return students;
    }
  
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    
}
