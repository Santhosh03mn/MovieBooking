<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Report</title>
    <style>
        /* General Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #fef3f4; /* Subtle pinkish background */
    margin: 0;
    padding: 20px;
    color: #333;
}

/* Container */
.container {
    max-width: 1100px; /* Increased width for more spacious layout */
    margin: auto;
    padding: 30px;
    background-color: #fff;
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1); /* Softer shadow */
    border-radius: 12px;
    overflow: hidden;
}

/* Header */
h2 {
    color: #d72638; /* Deep pink-red for emphasis */
    text-align: center;
    margin-top: 0;
    font-size: 26px;
    font-weight: bold;
}

/* Table Styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 25px;
    background-color: #fff;
}
th, td {
    padding: 15px; /* Increased padding for better spacing */
    text-align: left;
    font-size: 15px;
    vertical-align: top;
}
th {
    background-color: #d72638; /* Deep pink for table header */
    color: #fff;
    text-align: center;
    font-weight: bold;
    font-size: 16px;
}
tr:nth-child(even) {
    background-color: #f9ebea; /* Subtle pink for even rows */
}
tr:hover {
    background-color: #fce4ec; /* Light pink highlight on hover */
}

/* Show Details Styling */
.show-details {
    font-size: 14px;
    line-height: 1.8; /* Better line spacing for details */
    color: #555;
    padding: 8px 0;
}
.show-details strong {
    color: #444; /* Darker text for labels */
}
hr {
    border: none;
    border-top: 1px solid #ddd;
    margin: 10px 0;
}

/* Action Links Styling */
.action-links {
    display: flex;
    gap: 10px;
}
.action-links a {
    text-decoration: none;
    color: #fff;
    background-color: #007bff;
    padding: 10px 15px; /* Larger buttons for accessibility */
    border-radius: 6px;
    font-weight: 500;
    font-size: 14px;
    transition: background-color 0.3s, transform 0.2s;
    text-align: center;
}
.action-links a:hover {
    background-color: #0056b3;
    transform: scale(1.05); /* Slight scale effect for hover */
}

/* Responsive Styling */
@media (max-width: 768px) {
    .container {
        padding: 20px;
    }
    h2 {
        font-size: 22px;
    }
    th, td {
        font-size: 13px;
    }
    .show-details {
        font-size: 12px;
    }
    .action-links a {
        font-size: 12px;
        padding: 8px 10px;
    }
}
        
    </style>
</head>
<body>

<div class="container">
    <h2>Movie Report</h2>

    <table>
        <thead>
            <tr>
                <th>Movie Number</th>
                <th>Movie Name</th>
                <th>Language</th>
                <th>Genre</th>
                <th>Duration</th>
                <th>Rating</th>
                <th>Show Details</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="movie" items="${movieList}">
                <tr>
                    <td>${movie.movieId}</td>
                    <td>${movie.movieName}</td>
                    <td>${movie.language}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.duration}</td>
                    <td>${movie.rating}</td>
                    <td>
                        <c:forEach var="show" items="${movieMap[movie.movieId]}">
                            <div class="show-details">
                                <strong>Show Time:</strong> ${show.showTimeName}<br>
                                <strong>Royal Seat:</strong> ${show.royalSeat}<br>
                                <strong>Royal Booked:</strong> ${show.royalBooked}<br>
                                <strong>Premier Seat:</strong> ${show.premierSeat}<br>
                                <strong>Premier Booked:</strong> ${show.premierBooked}<br>
                            </div>
                            <hr>
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>