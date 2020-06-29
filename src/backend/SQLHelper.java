package backend;

import java.sql.*;

public class SQLHelper {

    private Connection connection = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public SQLHelper() throws SQLException {

        try {

            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection("jdbc:mysql://s27.zenbox.pl/website_projekt?user=website_projekt&password=mjxhmIruE8");

        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }

    public Connection getConn() {
        return connection;
    }

    public ResultSet query(String queryString) {

        if(connection != null) {

            try {

                statement = connection.createStatement();

                resultSet = statement.executeQuery(queryString);

            }
            catch (Exception e) {

                e.printStackTrace();
            }
        }

        return resultSet;

    }

    public void close() throws SQLException {

        if(connection != null)
            connection.close();
    }
}
