<%--
  Created by IntelliJ IDEA.
  User: Bartosz Kubacki
  Date: 26.06.2020
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>

<div class="page">
    <header id="header">

        <div class="container-fluid outer-container">

            <div class="container inner-container">

                <!-- First row, logo & top menu -->
                <div class="row justify-content-center align-items-center mb-5 top-bar">

                    <!-- Logo -->
                    <div class="col-sm-4 logo text-center">
                        <img src="front/dist/images/logo.svg" />
                    </div>

                    <!-- Menu -->
                    <div class="col-sm-5 top-menu text-center">
                        <ul>
                            <li>REPERTUAR</li>
                            <li>CENNIK</li>
                            <li>O NAS</li>
                            <li>KONTAKT</li>
                        </ul>
                    </div>

                    <!-- Search -->
                    <div class="col-sm-3 top-search p-0">
                        <label class="sr-only">Wyszukaj...</label>
                        <input type="text" name="top_search_value" placeholder="Wyszukaj film..." />
                    </div>

                </div>

                <div class="row justify-content-center radius">

                    <div class="col-sm-8 p-0 top-slider-main">
                        <img class="img-fluid" src="front/dist/images/example_slider.jpg" />
                    </div>
                    <div class="col-sm-4 p-0 top-slider-pane">
                        <ul class="p-0">
                            <li><img class="w-100" src="front/dist/images/mulan_movie.jpg" /></li>
                            <li><img class="w-100" src="front/dist/images/tenet_movie.jpg" /></li>
                        </ul>
                    </div>


                </div>

            </div>
    </header>
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

            <div class="row movie-row" id="first-movie-row">

                <div class="col-sm-3">
                    <img class="img-fluid" src="front/dist/images/joker_movie.jpg" />
                </div>

                <div class="col-sm-7">
                    <div class="row">
                        <h1>Joker / napisy</h1>
                    </div>
                    <div class="row">
                        <h5>Seans z Cyklu Kino Konesera</h2>
                    </div>
                    <div class="row">
                            <span>
                                <strong>Reżyseria:</strong>
                                <br />
                                Todd Phillips
                            </span>
                    </div>
                    <div class="row">
                            <span>
                                <strong>Obsada:</strong>
                                <br />
                                Joaquin Phoenix, Zazie Beetz, Robert De Niro
                            </span>
                    </div>
                    <div class="row">
                            <span>
                                <strong>Opis filmu:</strong>
                                <br />
                                Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera po raz pierwszy na wielkim ekranie. Przedstawiony przez Phillipsa obraz kultowego czarnego charakteru, Arthura Flecka (Phoenix), człowieka zepchniętego na margines, to nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.
                            </span>
                    </div>
                </div>

                <div class="col-sm-2 my-auto">
                    <div class="row justify-content-center movie-row-button">
                        ZWIASTUN >
                    </div>
                    <br />
                    <div class="row justify-content-center movie-row-button">
                        REZERWUJ BILET
                    </div>
                </div>

            </div>

        </div>

</div>

</main>
<jsp:include page="footer.jsp" />
</div>
</body>
