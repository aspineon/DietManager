<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Mainboard</title>
</head>
<body>


<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Podsumowanie</a><br></li>

</ul>

<h1>Twoja strona główna: </h1>

<button type="submit" class="button">Dodaj/Edytuj dane personalne</button>
<button type="submit" class="button">Dodaj produkt skanujšc kod kreskowy</button>
<button type="submit" class="button">Dodaj produkt już wprowadzony do bazy</button>
<button type="submit" class="button">Dodaj posiłek</button>
<button type="submit" class="button">Edytuj dane produktów/posiłków</button>

<div class="container">
    <div class="boxes">
        <h2>Całkowite zapotrzebowanie:</h2>
        <form method="get">
            <div>
                <ul>
                    <li>PPM: <b>test</b> [kcal]</li>
                    <li>CPM: <b>test</b> [kcal]</li>
                    <li>Białko: <b>test</b> [g]</li>
                    <li>Tłuszcz: <b>test</b> [g]</li>
                    <li>WW: <b>test</b> [g]</li>
                </ul>
            </div>
        </form>

    </div>
    <div class="boxes">
        <h2>Dzisiaj zjedzono:</h2>
        <form method="get">
            <div>
                <ul>
                    <li>PPM: <b>test</b> [kcal]</li>
                    <li>CPM: <b>test</b> [kcal]</li>
                    <li>Białko: <b>test</b> [g]</li>
                    <li>Tłuszcz: <b>test</b> [g]</li>
                    <li>WW: <b>test</b> [g]</li>
                </ul>
            </div>
        </form>

    </div>
    <div class="boxes">
        <h2>Pozostało do zjedzenia:</h2>
        <form method="get">
            <div>
                <ul>
                    <li>PPM: <b>test</b> [kcal]</li>
                    <li>CPM: <b>test</b> [kcal]</li>
                    <li>Białko: <b>test</b> [g]</li>
                    <li>Tłuszcz: <b>test</b> [g]</li>
                    <li>WW: <b>test</b> [g]</li>
                </ul>
            </div>
        </form>

    </div>
</div>


</body>
</html>