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
<script type="text/javascript">

    function notBlankValidate() {
        let firstName = document.getElementById('firstName');
        let surname = document.getElementById('surname');
        let email = document.getElementById('email');
        let age = document.getElementById('age');

        if(firstName.value === '') {
            firstName.setCustomValidity('Field first name must be filled out');
        } else {
            firstName.setCustomValidity('');
        }

        if(surname.value === '') {
            surname.setCustomValidity('Field surname must be filled out');
        } else {
            surname.setCustomValidity('');
        }

        if(email.value === '') {
            email.setCustomValidity('Field email must be filled out');
        } else {
            email.setCustomValidity('');
        }

        if (age.value === '') {
            age.setCustomValidity('Field age must be filled out');
        } else {
            age.setCustomValidity('');
        }
    }

    function validateEmail() {
        let email = document.getElementById('email');
        let emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
        if(email.value.match(emailRegex)) {
            return true;
        } else {
            email.setCustomValidity('Incorrect email');
            return false;
        }
    }

    function validateAge() {
        const MIN_AGE = 18;
        let age = document.getElementById('age');

        if(age.value < MIN_AGE) {
            age.setCustomValidity('You must be older than 18 years old');
            return false;
        } else {
            age.setCustomValidity('');
        }
    }
</script>
<body>
<form:form name="userdetails" method="post" modelAttribute="userData" onsubmit="return notBlankValidate() && validateEmail() && validateAge()">
    <h3>Please fill in your details:</h3>
    First Name: <form:input id="firstName" path="firstName"/>
    Surname: <form:input id="surname" path="surname"/>
    E-mail address: <form:input id="email" path="email"/>
    Age: <form:input id="age" path="age"/>
    <button type="submit">Submit</button>
</form:form>

</body>
</html>
