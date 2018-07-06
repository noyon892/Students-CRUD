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
    %{--<asset:javascript src="index.js"/>--}%
    <asset:javascript src="search.js"/>
</head>
<body>
<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        <li>Search: <input name="searchText"></li>
    </ul>
</div>
    <table class="default-table">
        <tr>
            <th>ID</th>
            <th>Student ID</th>
            <th>Name</th>
            <th>Details</th>
        </tr>
        <g:each in="${students}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.studentId}</td>
                <td>${student.name}</td>
                <td><a href="http://localhost:9001/student/show/${student.id}">Details</a></td>
            </tr>
        </g:each>
    </table>
<div>
    <table id="records_table">

    </table>
</div>
</body>
</html>
