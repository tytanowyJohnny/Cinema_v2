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

                    <form action="CinemaProcessor?action=register" method="post">
                        Imię: <input type="text" name="name" />
                        <br />
                        Nazwisko: <input type="text" name="surname" />
                        <br />
                        Login: <input type="text" name="login" />
                        <br />
                        Hasło: <input type="password" name="password" />
                        <br />
                        E-mail: <input type="email" name="email" />
                        <br />
                        <input type="submit">
                    </form>

                </div>
            </div>
        </main>
    <jsp:include page="../footer.jsp" />
    </div>
</body>

</html>