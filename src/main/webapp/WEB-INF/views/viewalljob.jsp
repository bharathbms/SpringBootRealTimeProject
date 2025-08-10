<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Jobs - BMS Job Portal</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

<jsp:include page="header.jsp" />

<div class="main-container">
    <h2>All Posted Jobs</h2>

    <c:if test="${empty jobs}">
        <p>No jobs posted yet.</p>
    </c:if>

    <c:if test="${not empty jobs}">
        <table border="1" cellpadding="10">
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
</div>

</body>
</html>
