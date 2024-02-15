<%--
  Created by IntelliJ IDEA.
  User: darsh
  Date: 30-01-2024
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Patient Appointment Registration</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <form method="post" action="addAppointment">--%>
<%--        <p>--%>
<%--            Name : <label>--%>
<%--            <input type="text" name="pName"/>--%>
<%--        </label>--%>
<%--        </p>--%>
<%--        <p>--%>
<%--            Contact : <label>--%>
<%--            <input type="text" name="pContact"/>--%>
<%--        </label>--%>
<%--        </p>--%>
<%--        <input type="submit" value="Add my appointment"/>--%>
<%--    </form>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>
        Patient Appointment Registration
    </title>
</head>
<body>
<h1>${mainheader}</h1>
<form:form method="post" action="addAppointment" modelAttribute="patient">
    <table>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <from:errors path="pName" cssStyle="color: red"/><br />
                <form:input path="pName" type="text"/>
            </td>
        </tr>
        <tr>
            <td>
                Conatct:
            </td>
            <td>
                <form:errors path="pContact" cssStyle="color: red"/><br />
                <form:input path="pContact" type="text"/>
            </td>
        </tr>
        <tr>
            <td>
                Subscribe to newsletter?
            </td>
            <td>
                <form:checkbox path="receiveNewsletter"/>
            </td>
        </tr>
        <tr>
            <td>
                Interests:
            </td>
            <td>
                Food : <form:checkbox path="interests" value="Food"/>
                SmartPhone : <form:checkbox path="interests" value="SamrtPhone"/>
                Movies : <form:checkbox path="interests" value="Movies"/>
            </td>
        </tr>
        <tr>
            <td>
                Favourite Food:
            </td>
            <td>
                Health : <form:checkbox path="favouriteFood" value="Health"/>
            </td>

        </tr>
        <tr>
            <td>Gender:</td>
            <td>

                <form:radiobutton path="patientGender" value="Male" label="Male"/>
                <form:radiobutton path="patientGender" value="Female" label="Female"/>
            </td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td>
                <form:errors path="patientDOB" cssStyle="color: red"/><br />
                <form:input path="patientDOB" type="date"/>

            </td>
        </tr>

        <tr>
            <td>Allergies:</td>
            <td>
                <form:checkboxes path="patientAllergies" items="${allergyList}"/>

            </td>
        </tr>
        <tr>
            <td colspan="2">Address Details:</td>
        </tr>
        <tr>
            <td>Street:</td>
            <td>
                <from:errors path="patientAddress.street" cssStyle="color: red"/><br />
                <form:input path="patientAddress.street" type="text"/>
            </td>
        </tr>
        <tr>
            <td>City:</td>
            <td>
                <from:errors path="patientAddress.city" cssStyle="color: red"/><br />
                <form:input path="patientAddress.city" type="text"/>
            </td>
        </tr>
        <tr>
            <td>State:</td>
            <td>
                <from:errors path="patientAddress.state" cssStyle="color: red"/><br />
                <form:input path="patientAddress.state" type="text"/>
            </td>
        </tr>
        <tr>
            <td>Country:</td>
            <td>
                <from:errors path="patientAddress.country" cssStyle="color: red"/><br />
                <form:select path="patientAddress.country">
                    <form:options items="${countryList}"/>
                </form:select>
            </td>
        </tr>
        <tr>
            <td>Pincode:</td>
            <td>
                <from:errors path="patientAddress.pincode" cssStyle="color: red"/><br />
                <form:input path="patientAddress.pincode" type="text"/>
            </td>

        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="Add my appointment"/>
            </td>
        </tr>
    </table>


</form:form>
</body>
</html>