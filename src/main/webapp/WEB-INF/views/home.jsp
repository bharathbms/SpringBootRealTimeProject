<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - BMS Job Portal</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

<jsp:include page="header.jsp" />

<div class="main-container">
    <!-- Job Search -->
    <div class="search-section">
        <h2>Search for Jobs</h2>
        <form action="/searchjob" method="get">
            <label>Keyword:</label>
            <input type="text" name="title" placeholder="e.g., Developer">

            <label>Location:</label>
            <input type="text" name="location" placeholder="e.g., New York">

            <button type="submit">Search</button>
        </form>
    </div>

    <!-- Post Job Shortcut -->
    <div class="post-section">
        <h2>For Employers</h2>
        <p>Want to post a job? Click below:</p>
        <a href="/addjob" class="btn">Post a Job</a>
    </div>
</div>

</body>
</html>
