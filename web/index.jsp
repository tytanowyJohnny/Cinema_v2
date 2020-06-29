<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html>
<html lang="pl">
<jsp:include page="front/head.jsp" />
<% String pageToLoad = request.getParameter("page");

    if(pageToLoad == null || pageToLoad.equals("") || pageToLoad.equals("index")) { %>

        <jsp:include page="front/pages/index-body.jsp" />

<%  } else if(pageToLoad.equals("singlePage")) { %>

        <jsp:include page="front/pages/single-movie.jsp" />
<%  } else if(pageToLoad.equals("login")) { %>

        <jsp:include page="front/pages/login.jsp" />
<% } else if(pageToLoad.equals("register")) { %>

        <jsp:include page="front/pages/register.jsp" />
<% } %>

</html>