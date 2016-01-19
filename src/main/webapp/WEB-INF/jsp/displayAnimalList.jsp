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
                    <!--<li role="presentation"><a href="${cp}/displayAnimalSearchPage">Animal Search</a></li>-->
                    <li role="presentation"><a href="${cp}/displayAddNewAnimalPage">Add Animal</a></li>
                    <li role="presentation" class="active"><a href="${cp}/displayAnimalList">All Animals</a></li>
                </ul>    
            </div>
        </div>
        <div class="listOfAnimals">
            <div class="container">
                <button class="btn btn-success"><a href="${cp}/displayAddNewAnimalPage" style="color: white">Add a new animal</a></button>
                <h5 class="changeToKennelMessage">${addedMessage}${deletedMessage}${editedMessage}</h5>
                <hr/>
                <c:forEach var="animal" items="${animalList}">
                    <s:url value="deleteAnimal"
                           var="deleteAnimal_url">
                        <s:param name="number" value="${animal.num}" />
                    </s:url>
                    <s:url value="editAnimalPage"
                           var="editAnimal_url">
                        <s:param name="number" value="${animal.num}" />
                    </s:url>
                    <!--Serial Number: <p class="animalDisplayInfo">${animal.num}<br/>-->
                    <p class="animalDisplayInfo">Name: ${animal.name} (${animal.gender})</p>
                    <p class="animalDisplayInfo">Breed: ${animal.breed}</p>
                    <p class="animalDisplayInfo">Age: ${animal.age}</p>
                    <p class="animalDisplayInfo">Disposition: ${animal.disposition}</p>
                    <p class="animalDisplayInfo">Weight: ${animal.weight}</p><br/>
                    <button class="btn btn-danger"><a href="${deleteAnimal_url}" style="color: white">Delete</a></button>
                    <button class="btn btn-warning"><a href="${editAnimal_url}" style="color: white">Edit</a></button>
                    <hr/>
                </c:forEach>
            </div>
        </div>
    </body>
</html>