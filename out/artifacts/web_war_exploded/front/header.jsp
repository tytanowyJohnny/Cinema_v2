<%--
  Created by IntelliJ IDEA.
  User: Bartosz Kubacki
  Date: 26.06.2020
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <li><a href="index.jsp?page=index">REPERTUAR</a></li>
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