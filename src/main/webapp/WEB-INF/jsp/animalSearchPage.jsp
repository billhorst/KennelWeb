<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kennel</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/style.css" />
        <link href="${cp}/resources/css/bootstrap.min.css" rel="stylesheet">
        <script src="${cp}/resources/js/jquery-1.11.1.min.js"></script>
        <script src="${cp}/resources/js/bootstrap.min.js"></script>
        <script src="${cp}/resources/js/scripts.js"></script>
    </head>
    <body>
        <h1 id="kennelTitle">Spring Kennel</h1>
        <div class="container">
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="${cp}/">Home</a></li>
                    <li role="presentation" class="active"><a href="${cp}/displayAnimalSearchPage">Animal Search</a></li>
                    <li role="presentation"><a href="${cp}/displayAddNewAnimalPage">Add Animal</a></li>
                    <li role="presentation"><a href="${cp}/displayAnimalList">All Animals</a></li>
                </ul>    
            </div>
        </div>
    </body>
</html>