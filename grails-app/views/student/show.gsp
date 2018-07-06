<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Student Index</title>
</head>
<body>
<a href="#list-person" class="skip" tabindex="-1"></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index">User list</g:link></li>
    </ul>
</div>
<table>
    <tr>
        <td>ID:</td>
        <td>${this.student.id}</td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>${this.student.name}</td>
    </tr>
    <tr>
        <td>Student ID:</td>
        <td>${this.student.studentId}</td>
    </tr>
</table>
<g:form resource="${this.student}" method="DELETE">
    <fieldset class="buttons">
        <g:link class="edit" action="edit" resource="${this.student}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </fieldset>
</g:form>
</body>
</html>