<%@ page import="backend.SQLHelper" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="model.CinemaMovie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html>
<html lang="pl">
<jsp:include page="../head.jsp" />
<body>
    <div class="page">
        <jsp:include page="../header.jsp" />
        <main id="main">
            <div class="container">
                <div class="row justify-content-center radius bg-white">

                    <%
                        out.print(request.getAttribute("infoText").toString());
                    %>

                </div>
            </div>
        </main>
    <jsp:include page="../footer.jsp" />
    </div>
</body>

</html>