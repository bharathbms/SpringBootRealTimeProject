<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Project01.JobApp.model.PostJob" %>
<!DOCTYPE html>
<html>
<head>
    <title>Job Posted Successfully</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

<jsp:include page="header.jsp" />

<div class="main-container">
    <%
        PostJob postjob = (PostJob) request.getAttribute("postjob");
        if (postjob != null) {
    %>
        <h2>✅ Job Posted Successfully!</h2>
        <p><strong>Title:</strong> <%= postjob.getTitle() %></p>
        <p><strong>Company:</strong> <%= postjob.getCompany() %></p>
        <p><strong>Location:</strong> <%= postjob.getLocation() %></p>
        <p><strong>Description:</strong> <%= postjob.getDescription() %></p>
    <%
        } else {
    %>
        <p>No job details available.</p>
    <%
        }
    %>

    <a href="/viewalljob" class="btn">View All Jobs</a>
</div>

</body>
</html>
