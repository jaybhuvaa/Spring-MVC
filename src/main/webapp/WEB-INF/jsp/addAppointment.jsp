<%--
  Created by IntelliJ IDEA.
  User: darsh
  Date: 30-01-2024
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Patient Appointment Registration Status</title>
</head>
<body>
<h1>${mainheader}</h1>
<p>
    ${message}
</p>
<table>
    <tr>
        <td>
            Patient Name :
        </td>
        <td>
            ${patient.pName}
        </td>

    </tr>
    <tr>
        <td>
            Patient Contact :
        </td>
        <td>
            ${patient.pContact}
        </td>
    </tr>
    <tr>
        <td>
            Newsletter Subscription:
        </td>
        <td>
            ${patient.receiveNewsletter}
        </td>
    </tr>
    <tr>
        <td>
            Interests:
        </td>
        <td>
            <c:forEach var="intrt" items="${patient.interests}">
                ${intrt}<br/>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>
            Health:
        </td>
        <td>
            ${patient.favouriteFood}
        </td>
    </tr>
    <tr>
        <td>Patient Gender:</td>
        <td>${patient.patientGender}</td>
    </tr>
    <tr>
        <td>Patient DOB:</td>
        <td>${patient.patientDOB}</td>
    </tr>
    <tr>
        <td>Patient Allergies:</td>
        <td>
            <c:forEach var="allergy" items="${patient.patientAllergies}">
                ${allergy}<br/>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td colspan="2">Address Details:</td>
    </tr>
    <tr>
        <td>Patient Street:</td>
        <td>${patient.patientAddress.street}</td>
        <%--        <td>${patient.receiveNewsletter}</td>--%>
    </tr>
    <tr>
        <td>Patient City:</td>
        <td>${patient.patientAddress.city}</td>
    </tr>
    <tr>
        <td>Patient State:</td>
        <td>${patient.patientAddress.state}</td>
    </tr>
    <tr>
        <td>Patient Country:</td>
        <td>${patient.patientAddress.country}</td>
    </tr>
    <tr>
        <td>Patient Pincode:</td>
        <td>${patient.patientAddress.pincode}</td>
    </tr>


</table>
</body>
</html>
