<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Results - BMS Job Portal</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

<jsp:include page="header.jsp" />

<div class="main-container">
    <h2>Search Results</h2>

    <c:if test="${not empty jobs}">
        <table border="1" cellpadding="8" cellspacing="0">
            <tr>
                <th>Title</th>
                <th>Company</th>
                <th>Location</th>
                <th>Description</th>
            </tr>
            <c:forEach var="job" items="${jobs}">
                <tr>
                    <td>${job.title}</td>
                    <td>${job.company}</td>
                    <td>${job.location}</td>
                    <td>${job.description}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <c:if test="${empty jobs}">
        <p>No jobs found for "<strong>${param.title}</strong>" in "<strong>${param.location}</strong>".</p>
    </c:if>

    <br>
    <a href="/home">Back to Home</a>
</div>

</body>
</html>
