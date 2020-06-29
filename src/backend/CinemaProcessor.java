package backend;

import model.CinemaUser;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "CinemaProcessor", urlPatterns = "/CinemaProcessor")
public class CinemaProcessor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext app = getServletContext();
        HttpSession session = request.getSession();
        response.setContentType("text/html; charset=utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        SQLHelper helper = null;

        try {
            helper = new SQLHelper();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        CinemaUser currentUser = (CinemaUser) session.getAttribute("currentUser");
        if(currentUser == null)
            session.setAttribute("currentUser", new CinemaUser());

        String action = request.getParameter("action");

        switch (action) {

            case "login":
                String login = request.getParameter("username");
                String password = request.getParameter("password");

                // Compose SQL
                String query = "SELECT * FROM `users` WHERE `username`='" + login + "'";

                ResultSet result = helper.query(query);

                try {
                    if(result.next()) {

                        String db_password = result.getString("password");

                        if(password.equals(db_password)) {

                            String name = result.getString("name");
                            String surname = result.getString("surname");
                            String username = result.getString("username");
                            String email = result.getString("email");
                            int role = result.getInt("role");

                            CinemaUser tmp_user = new CinemaUser(name, surname, username, db_password, email, role);

                            session.setAttribute("loggedUser", tmp_user);

                            request.setAttribute("infoText", "Zostałeś zalogowany!");
                            app.getRequestDispatcher("/front/pages/info.jsp").forward(request, response);

                        } else {

                            // Failed to login

                        }

                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

            case "register":
                // get params
                String name = request.getParameter("name");
                String surname = request.getParameter("surname");
                String new_login = request.getParameter("login");
                String new_password = request.getParameter("password");
                String email = request.getParameter("email");

                // Compose SQL
                String insert = "INSERT INTO `users`(`name`, `surname`, `username`, `email`, `password`) VALUES (?, ?, ?, ?, ?)";

                try {
                    PreparedStatement preparedStatement = helper.getConn().prepareStatement(insert);
                    preparedStatement.setString(1, name);
                    preparedStatement.setString(2, surname);
                    preparedStatement.setString(3, new_login);
                    preparedStatement.setString(4, email);
                    preparedStatement.setString(5, new_password);

                    preparedStatement.executeUpdate();

                    app.getRequestDispatcher("/front/pages/info.jsp").forward(request, response);

                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

            default:
                // Do nothing
                break;

        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);

    }
}
