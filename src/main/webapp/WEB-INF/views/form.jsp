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

    function notBlankValidation() {
        let firstName = document.getElementById('firstName');
        let surname = document.getElementById('surname');
        let email = document.getElementById('email');
        let age = document.getElementById('age');

        let msg = '';

        if(firstName.value === '') {
            msg += "First name is required <br/>";
        }
        if(surname.value === '') {
            msg += "Surname is required <br/>";
        }
        if(email.value === '') {
            msg += "Email address is required <br/>";
        }
        if(age.value === '') {
            msg += "Age is required <br/>";
        }
        if(msg !== '') {
            document.getElementById('errors').innerHTML = msg;
            return false;
        } else {
            return true;
        }
    }

    function valEmail() {
        let email = document.getElementById('email');
        let emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

        let msg = '';

        if(!email.value.match(emailRegex)) {
            msg += "Wrong format of email address <br/>";
            document.getElementById('errors').innerHTML = msg;
            return false;
        } else {
            return true;
        }
    }
    
    function valAge() {
        const MIN_AGE = 19;
        let age = document.getElementById('age');

        let msg = '';

        if(isNaN(age.value) || age.value < MIN_AGE) {
            msg += "Enter a valid age (greater than 18) <br/>";
            document.getElementById('errors').innerHTML = msg;
            return false;
        } else {
            return true;
        }
    }
    
    function validate() {
        if(notBlankValidation()) {
            if(valEmail() && valAge()) {
                return true;
            }
        }
        return false;
    }
</script>
<body>
<form:form name="userdetails" method="post" modelAttribute="userData" onsubmit="return validate()">
    <h3>Please fill in your details:</h3>
    First Name: <form:input name="fName" id="firstName" path="firstName"/>
    Surname: <form:input name="sName" id="surname" path="surname"/>
    E-mail address: <form:input name="email" id="email" path="email"/>
    Age: <form:input name="age" id="age" path="age"/>
    <button type="submit">Submit</button>
    <p id="errors"></p>
</form:form>

</body>
</html>
