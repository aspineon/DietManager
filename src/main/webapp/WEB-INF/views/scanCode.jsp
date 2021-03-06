<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>

<link rel="stylesheet" href="../../media/css/style.css">
<title>Skanowanie kodu</title>

</head>
<body>

<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Menadżer Osobisty</a><br></li>
</ul>

<h1>Zeskanuj kod kreskowy lub wpisz ręcznie: </h1>

<form:form method="post" modelAttribute="product">
    Zeskanuj lub wpisz kod kreskowy:<br>
    <form:input path="code"/>
    <button type="submit">Skanuj!</button>
</form:form>

</body>
</html>