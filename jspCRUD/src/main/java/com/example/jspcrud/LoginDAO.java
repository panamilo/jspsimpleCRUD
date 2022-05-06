package com.example.jspcrud;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {

    public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("org.postgresql.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:postgresql://localhost:5432/crudDB", "postgres", "123");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement("select * from users where username = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }

    public int registerUser(LoginBean loginBean) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO users" +
                "  (username, password, first_name, last_name) VALUES " +
                " (?, ?, ?, ?);";

        int result = 0;

        Class.forName("org.postgresql.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crudDB", "postgres", "123");

             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());
            preparedStatement.setString(3, loginBean.getFirst_name());
            preparedStatement.setString(4, loginBean.getLast_name());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();


        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
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