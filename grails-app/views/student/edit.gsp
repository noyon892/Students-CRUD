<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index">User List</g:link></li>
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>
<form method="post" action="update">
    <table>
        <tr>
            <td>Id:</td>
            <td><input type="hidden" name="studentId" value="${student.id}"></td>
            <td>${student.id}</td>
        </tr>
        <tr>
            <td>Student Id:</td>
            <td><input type="text" name="studentId" value="${student.studentId}"></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" ${student.name}></td>
        </tr>
        <tr>
            <td></td>
            <td><input class="btn btn-befault" value="Update" type="submit"></td>
        </tr>
    </table>
</form>

</body>
</html>