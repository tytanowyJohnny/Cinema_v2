<%--
  Created by IntelliJ IDEA.
  User: Bartosz Kubacki
  Date: 26.06.2020
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.CinemaUser" %>
<%@ page import="backend.SQLHelper" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="model.CinemaMovie" %>
<jsp:useBean id="currentUser" class="model.CinemaUser" scope="session" />
<body>
<div class="page">
<jsp:include page="../header.jsp" />
    <main id="main">

        <div class="container">

            <div class="row">

                <div class="col-sm-4">
                    <span class="show-list-string"><b>REPERTUAR</b></span>
                    <span class="current-date" id="current-date"></span>
                </div>

                <div class="col-sm-8 below-slider-bar p-0">
                    <ul class="p-0 mb-0" id="below-slider-list">
                    </ul>
                </div>

            </div>

            <div class="row text-center">
                <div class="col-sm-12 break-line"></div>
            </div>
            <% // Make DB connection & get movies

                try {
                    SQLHelper helper = new SQLHelper();

                    ResultSet movieList = helper.query("SELECT * FROM `movies`");

                    while(movieList.next()) {

                        CinemaMovie tmp_movie = new CinemaMovie(movieList);
            %>

                        <div class="row movie-row" id="first-movie-row">

                            <div class="col-sm-3">
                                <img class="img-fluid" src="front/dist/images/<%=tmp_movie.getImg()%>" />
                            </div>

                            <div class="col-sm-7">
                                <div class="row">
                                    <a href="index.jsp?page=singlePage&id=<%=tmp_movie.getId()%>"><h1><%=tmp_movie.getName()%> / <%=tmp_movie.getType()%></h1></a>
                                </div>
                                <div class="row">
                                    <h5><%=tmp_movie.getComment()%></h2>
                                </div>
                                <div class="row">
                                        <span>
                                            <strong>Reżyseria:</strong>
                                            <br />
                                            <%=tmp_movie.getDirector()%>
                                        </span>
                                </div>
                                <div class="row">
                                        <span>
                                            <strong>Obsada:</strong>
                                            <br />
                                            <%=tmp_movie.getActors()%>
                                        </span>
                                </div>
                                <div class="row">
                                        <span>
                                            <strong>Opis filmu:</strong>
                                            <br />
                                            <%=tmp_movie.getDesc()%>
                                        </span>
                                </div>
                            </div>

                            <div class="col-sm-2 my-auto">
                                <div class="row justify-content-center movie-row-button">
                                    <a href="index.jsp?page=singlePage">ZWIASTUN ></a>
                                </div>
                                <br />
                                <div class="row justify-content-center movie-row-button">
                                    <% if(currentUser.getRole() > - 1) { %>

                                    REZERWUJ BILET

                                    <%  } else { %>

                                    <a href="index.jsp?page=login">ZALOGUJ SIĘ ABY ZAREZEROWOWAC BILET</a>

                                    <%  } %>
                                </div>
                            </div>

                        </div>


            <%
                    }

                    helper.close();

                } catch (SQLException e) {
                    e.printStackTrace();
                }

            %>

        </div>

</div>

</main>
<jsp:include page="../footer.jsp" />
</div>
</body>
