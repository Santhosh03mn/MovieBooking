<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Time Report</title>
<style>
/* General page styling */
body {
    font-family: Arial, sans-serif;
    background-color: #fce4ec; /* Soft pink background */
    color: #333;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;`
    align-items: center;
    height: 100vh;
    position: relative;
}

/* Back button styling */
.back-button {
    position: absolute;
    top: 20px;
    left: 20px;
    font-size: 1.5em;
    font-weight: bold;
    color: #b71c1c; /* Deep red for the back button */
    text-decoration: none;
    cursor: pointer;
}

.back-button:hover {
    color: #d32f2f; /* Darker red on hover */
}

/* Container styling */
div {
    max-width: 1000px;
    width: 90%;
    padding: 30px;
    background-color: #fff;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    border-radius: 10px;
}

/* Header styling */
h1 {
    text-align: center;
    color: #b71c1c; /* Deep red for header */
    margin-bottom: 20px;
    font-size: 28px;
    letter-spacing: 1px;
}

h2 {
    text-align: center;
    color: #555;
    font-weight: 400;
    margin-bottom: 30px;
    font-size: 20px;
}

/* Table styling */
table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0 15px; /* Add space between rows */
    margin-top: 20px; /* Add space between table header and table contents */
}

th, td {
    padding: 15px;
    text-align: left;
    border-bottom: 2px solid #f0f0f0; /* Add a soft line for better separation */
}

th {
    background-color: #f8bbd0; /* Light pink for header */
    font-weight: bold;
    letter-spacing: 0.5px;
}

tr:hover {
    background-color: #fce4ec; /* Light pink hover for rows */
}

td {
    background-color: #fff;
    border-radius: 8px;
}

/* Action buttons */
.action-link {
    color: #fff;
    padding: 8px 15px;
    border-radius: 4px;
    font-size: 0.9em;
    text-decoration: none;
    display: inline-block;
    text-align: center;
}

.delete {
    background-color: #e57373; /* Soft red for delete button */
}

.delete:hover {
    background-color: #d32f2f; /* Darker red hover */
}

.update {
    background-color: #f48fb1; /* Soft pink for update button */
}

.update:hover {
    background-color: #ec407a; /* Darker pink hover */
}
</style>
</head>
<body>

<!-- Back button -->
<a href="/index" class="back-button">&lt;</a>

<div>
    <h1>Show Time Report</h1>
    <h2>List of All Show Times</h2>
    
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Royal Price</th>
            <th>Premier Price</th>
            <th>ShowTime Deletion</th>
            <th>ShowTime Updation</th>
        </tr>
        
        <c:forEach items="${showTimeList}" var="showtime">
            <tr>
                <td>${showtime.showTimeId}</td>
                <td>${showtime.showTimeName}</td>
                <td>${showtime.showTimeRoyalPrice}</td>
                <td>${showtime.showTimePremierPrice}</td>
                <td><a href="/showTimeDeletion/${showtime.showTimeId}" class="action-link delete">Delete</a></td>
                <td><a href="/showTimeUpdation/${showtime.showTimeId}" class="action-link update">Update</a></td>
            </tr>
        </c:forEach>
        
    </table>
</div>

</body>
</html>