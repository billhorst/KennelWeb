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
            <h1>Edit Animal</h1>
            <hr/>
            <a href="${cp}/displayAnimalList">
                <button class="btn btn-warning">Cancel and go back to animal list</button>
            </a>
            <form class="form-horizontal" role="form" modelAttribute="animal" action="editAnimal" method="POST">
                <div class="form-group">
                    <label for="add-name" class="col-md-4 control-label">Name:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="add-name" path="name" placeholder="New name"
                               value="${animal.name}" name="name"/>

                    </div>
                </div>
                <div class="form-group">
                    <label for="add-breed" class="col-md-4 control-label">Breed:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="add-breed" path="breed" placeholder="New Breed"
                               value="${animal.breed}" name="breed"/>

                    </div>
                </div>
                <div class="form-group">
                    <label for="add-gender" class="col-md-4 control-label">Gender:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="add-gender" path="gender" placeholder="New Gender"
                               value="${animal.gender}" name="gender"/>

                    </div>
                </div>
                <div class="form-group">
                    <label for="add-age" class="col-md-4 control-label">Age:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="add-age" path="age" placeholder="New Age"
                               value="${animal.age}" name="age"/>

                    </div>
                </div>
                <div class="form-group">
                    <label for="add-disposition" class="col-md-4 control-label">Disposition:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="add-disposition" path="disposition" placeholder="New Disposition"
                               value="${animal.disposition}" name="disposition"/>

                    </div>
                </div>
                <div class="form-group">
                    <label for="add-weight" class="col-md-4 control-label">Weight:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="add-weight" path="weight" placeholder="New Weight"
                               value="${animal.weight}" name="weight"/>
                        <%-- This hidden field will send over the original animal number
                        as the edited animal's number. --%>
                        <input name="num" type="hidden" path="num" value="${animal.num}"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-4 col-md-8">
                        <button type="submit" id="add-button" class="btn btn-success">Save Changes</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>