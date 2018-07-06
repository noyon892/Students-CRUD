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

    <asset:javascript src="create.js"></asset:javascript>
</head>
<body>
<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index">User List</g:link></li>
    </ul>
</div>
<p><span style="color:#ff0000">*</span> marked field must filled</p>
<form method="post" action="create" id="registration">
    <p style="color:#f00" id="iderror"></p>
    <p style="color:#f00" id="nameerror"></p>
    <input type="hidden" name="create" value="true">
    <div class="row">
        <div class="col-sm-2">
            <div><span style="color:#ff0000">*</span>Student Id:</div>
            <br>
            <div><span style="color:#ff0000">*</span>Name:</div>
        </div>
        <div class="col-sm-4">

            <div>
                <input type="text" id="studentid" name="studentId">

            </div>
            <br>
            <div>
                <input type="text" id="name" name="name">
            </div>
        </div>
    </div>
<br>
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-4"><input type="submit" class="btn btn-default" value="Create"></div>
    </div>
</form>
</body>
</html>