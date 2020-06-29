<%@ page import="backend.SQLHelper" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="model.CinemaMovie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html>
<html lang="pl">
<body>
    <div class="page">
        <jsp:include page="../header.jsp" />
        <main id="main">
            <div class="container">
                <div class="row justify-content-center radius bg-white">

                    <form action="CinemaProcessor?action=login" method="post">
                        Login: <input type="text" name="username" />
                        <br />
                        Hasło: <input type="text" name="password" />
                        <br />
                        <input type="submit" value="Zaloguj" />
                        <br />
                        Nie posiadasz konta?
                        <br />
                        <a href="index.jsp?page=register">Zarejestruj się</a>
                    </form>

                </div>
            </div>
        </main>
    <jsp:include page="../footer.jsp" />
    </div>
</body>

</html>