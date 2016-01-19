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
                    <li role="presentation" class="active"><a href="${cp}/displayAddNewAnimalPage">Add Animal</a></li>
                    <li role="presentation"><a href="${cp}/displayAnimalList">All Animals</a></li>
                </ul>    
            </div>
        </div>

        <div class="container">
            <h1>New Animal Form</h1>
            <form class="form-horizontal" 
                  role="form" 
                  action="addNewAnimal" 
                  method="POST">
                <div class="form-group">
                    <label for="add-name" 
                           class="col-md-4 control-label">Name:</label>
                    <div class="col-md-8">
                        <input type="text" 
                               class="form-control" 
                               id="add-name" 
                               name="name" 
                               placeholder="Kujo"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="add-breed" class="col-md-4 control-label">Breed:</label>
                    <div class="col-md-8">
                        <input type="text" 
                               class="form-control" 
                               id="add-breed" 
                               name="breed" 
                               placeholder="Lab"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="add-gender" 
                           class="col-md-4 control-label">Gender:</label>
                    <div class="col-md-8">
                        <input type="text" 
                               class="form-control" 
                               id="add-gender" 
                               name="gender" 
                               placeholder="m"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="add-age" class="col-md-4 control-label">Age:</label>
                    <div class="col-md-8">
                        <input type="age" 
                               class="form-control" 
                               id="add-age" 
                               name="age" 
                               placeholder="12"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="add-disposition" class="col-md-4 control-label">Disposition:</label>
                    <div class="col-md-8">
                        <input type="disposition" 
                               class="form-control" 
                               id="add-disposition" 
                               name="disposition" 
                               placeholder="happy"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="add-weight" class="col-md-4 control-label">Weight:</label>
                    <div class="col-md-8">
                        <input type="weight" 
                               class="form-control" 
                               id="add-weight" 
                               name="weight" 
                               placeholder="25"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-4 col-md-8">
                        <button type="submit" 
                                id="add-button" 
                                class="btn btn-default">Add the New Animal</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>