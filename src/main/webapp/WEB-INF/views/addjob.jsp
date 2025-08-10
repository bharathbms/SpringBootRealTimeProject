<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Job - BMS Job Portal</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

<jsp:include page="header.jsp" />

<div class="main-container">
    <h2>Post a New Job</h2>
    <form action="/handleform" method="post">
        <label>Job Title:</label>
        <input type="text" name="title" required>

        <label>Company:</label>
        <input type="text" name="company" required>

        <label>Location:</label>
        <input type="text" name="location" required>

        <label>Description:</label>
        <textarea name="description" rows="5" required></textarea>

        <button type="submit">Post Job</button>
    </form>
</div>

</body>
</html>
