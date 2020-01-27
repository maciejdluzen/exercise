<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: maciej
  Date: 27/01/2020
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
</head>
<body>
<form:form method="post" modelAttribute="userData">
    <h3>Please fill in your details:</h3>
    First Name: <form:input path="firstName" required="true"/>
    Surname: <form:input path="surname" required="true"/>
    E-mail address: <form:input path="email" required="true"/>
    Age: <form:input path="age" required="true"/>
</form:form>
</body>
</html>
