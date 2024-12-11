<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Report by Language</title>
    <style>
    /* General Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #ffe6f2; /* Light pink background */
    margin: 0;
    padding: 20px;
    color: #444;
}

/* Headings */
h2 {
    text-align: center;
    color: #ff4081; /* Vibrant pink for emphasis */
    font-size: 28px;
    margin-bottom: 20px;
}
h3 {
    text-align: center;
    font-size: 22px;
    color: #444;
    margin-bottom: 20px;
}
h3 span {
    color: #ff4081;
}

/* Form */
form {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 30px;
    gap: 10px;
}
label {
    font-weight: bold;
    margin-right: 5px;
    color: #444;
}
select, button {
    padding: 10px 15px;
    font-size: 16px;
    border: 1px solid #ffb3c6; /* Subtle pink border */
    border-radius: 5px;
    background-color: #fff;
    color: #444;
}
button {
    background-color: #ff4081; /* Vibrant pink for buttons */
    color: #fff;
    cursor: pointer;
    border: none;
    transition: background-color 0.3s ease, transform 0.2s ease;
}
button:hover {
    background-color: #e0356b; /* Slightly darker pink on hover */
    transform: scale(1.05); /* Hover animation */
}

/* Table */
table {
    width: 90%;
    margin: 0 auto 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
}
th, td {
    padding: 15px 20px;
    text-align: left;
    border-bottom: 1px solid #ffccd5; /* Light pink border */
}
th {
    background-color: #ff80a4; /* Light pink header */
    color: #fff;
    font-weight: bold;
    text-align: center;
    font-size: 16px;
}
td {
    font-size: 15px;
}
tr:nth-child(even) {
    background-color: #ffe6f2; /* Very light pink for even rows */
}
tr:hover {
    background-color: #ffccd5; /* Light pink hover effect */
}
td:last-child {
    text-align: center;
}

/* Show Details */
.showtime-details {
    padding: 10px;
    background-color: #ffe6f2; /* Light pink background for details */
    border: 1px solid #ffb3c6;
    border-radius: 5px;
    margin-bottom: 8px;
}
.showtime-details strong {
    color: #444;
}
hr {
    border-top: 1px solid #ffb3c6; /* Subtle pink divider */
    margin: 8px 0;
}

/* No Movies Message */
.no-movies {
    text-align: center;
    font-size: 18px;
    color: #999;
    margin-top: 20px;
}

/* Responsive Design */
@media (max-width: 768px) {
    body {
        padding: 10px;
    }
    h2, h3 {
        font-size: 20px;
    }
    table {
        width: 100%;
    }
    th, td {
        font-size: 14px;
        padding: 10px;
    }
    select, button {
        font-size: 14px;
        padding: 8px 10px;
    }
}
      
    </style>
</head>
<body>

<h2>Movie Report by Language</h2>

<!-- Search Form to Select Language -->
<form action="${pageContext.request.contextPath}/movieReportLanguage" method="post">
    <label for="language">Select Language:</label>
    <select name="language" id="language" required>
        <c:forEach var="lang" items="${languageSet}">
            <option value="${lang}" <c:if test="${lang == selectedLanguage}">selected</c:if>>${lang}</option>
        </c:forEach>
    </select>
    <button type="submit">Search</button>
</form>

<!-- Display Movie Report Table -->
<c:if test="${not empty movieList}">
    <h3 style="text-align:center; color: #333;">Movies in Language: <span style="color:#007bff;">${selectedLanguage}</span></h3>
   <table>
    <thead>
        <tr>
            <th>Movie ID</th>
            <th>Movie Name</th>
            <th>Rating</th>
            <th>Language</th>
            <th>Duration</th>
            <th>Show Times</th>
            <th>Book</th> <!-- New column for booking -->
        </tr>
    </thead>
    <tbody>
        <c:forEach var="movie" items="${movieList}">
            <tr>
                <td>${movie.movieId}</td>
                <td>${movie.movieName}</td>
                <td>${movie.rating}</td>
                <td>${movie.language}</td>
                <td>${movie.duration} mins</td>
                <td>
                    <!-- Show time details for each movie -->
                    <c:forEach var="show" items="${movieMap[movie.movieId]}">
                        <div class="showtime-details">
                            <strong>Show Time:</strong> ${show.showTimeName}<br>
                            <strong>Royal Seats:</strong> ${show.royalSeat}<br>
                            <strong>Premier Seats:</strong> ${show.premierSeat}<br>
                            <hr style="border-top: 1px solid #ddd;">
                        </div>
                    </c:forEach>
                </td>
                <td>
                    <!-- Book button for this movie -->
                    <form action="/bookMovie/${movie.movieId}" method="post">
                        <input type="hidden" name="movieId" value="${movie.movieId}">
                        <button type="submit">Book</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
   
</c:if>

<c:if test="${empty movieList}">
    <p class="no-movies">No movies found for the selected language.</p>
</c:if>

</body>
</html>