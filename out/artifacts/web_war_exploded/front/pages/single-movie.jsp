<%@ page import="backend.SQLHelper" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="model.CinemaMovie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html>
<html lang="pl">
<body>
<%
    // Get info about requested movie
    System.out.println("START");
    int movieID = Integer.parseInt(request.getParameter("id"));
    System.out.println("TEST");
    CinemaMovie currentMovie;

    try {
        SQLHelper helper = new SQLHelper();

        System.out.println("SELECT * FROM `movies` WHERE `id`='" + movieID + "'");

        ResultSet result = helper.query("SELECT * FROM `movies` WHERE `id`='" + movieID + "'");


        if(result.next()) {

            currentMovie = new CinemaMovie(result);


%>
    <div class="page">
        <jsp:include page="../header.jsp" />
        <main id="main">
            <div class="container">
                <div class="row justify-content-center radius bg-white">
                    <div class="col-md-4 p-0">
                        <div class="poster">
                            <img src="front/dist/images/<%=currentMovie.getImg()%>" alt="<%=currentMovie.getName()%>" class="poster__image img-fluid" />
                        </div>
                        <div class="gallery pb-5 mt-3">
                            <div class="gallery__image">
                                <img src="front/dist/images/joaquin-phoenix-joker-2019-4.jpg" alt='Galeria' class="img-fluid" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="title">
                            <h1 class="title__header"><%=currentMovie.getName()%></h1>
                        </div>
                        <div class="category">
                            <%=currentMovie.getCategory()%>
                        </div>
                        <div class="premiere">
                            <strong><%=currentMovie.getName()%></strong> miał premierę w dniu <%=currentMovie.getPremiere()%>
                        </div>
                        <div class="description">
                            <h2 class="description__header">Opis filmu <%=currentMovie.getName()%>:</h2>
                            <div class="description__content">
                                <%=currentMovie.getDesc()%>
                            </div>
                        </div>
                        <div class="informations mt-3">
                            <div>
                                <a href="#!" class="check">Sprawdź repertuar kina</a>
                            </div>
                            <h2 class="informations__header">Szczegółowe informacje o filmie</h2>
                            <div class="informations__content">
                                <div class="row">
                                    <div class="col-12 mb-2">
                                        <strong>Rok produkcji: </strong> <%=currentMovie.getProdYear()%>
                                    </div>
                                    <div class="col-12 mb-2">
                                        <strong>Produkcja: </strong> <%=currentMovie.getProdCountry()%>
                                    </div>
                                    <div class="col-12 mb-2">
                                        <strong>Ocena według IMDB: </strong> <%=currentMovie.getImdb()%>/10
                                    </div>
                                    <div class="col-12 mb-2">
                                        <strong>Czas trwania: </strong> <%=currentMovie.getDuration()%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h3 class="informations__header">Inne polecany filmy dla Ciebie: </h3>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="related">
                                    <img src="front/dist/images/mulan-movie.jpg" alt="" class="img-fluid pb-1" />
                                    <h3 class="related__header">Mulan</h3>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="related">
                                    <img src="front/dist/images/trolle-movie.jpg" alt="" class="img-fluid pb-1" />
                                    <h3 class="related__header">Trolle</h3>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="related">
                                    <img src="front/dist/images/wonder_w-movie.jpg" alt="" class="img-fluid pb-1" />
                                    <h3 class="related__header">Wonder Woman</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    <jsp:include page="../footer.jsp" />
    </div>
<%
        }

        helper.close();

    }
    catch (Exception e) {

        e.printStackTrace();
    }

%>
</body>

</html>