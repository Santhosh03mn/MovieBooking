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
            background-color: #fff4fa; /* Soft pink background */
            margin: 0;
            padding: 20px;
            color: #4b2c38; /* Darker pink tone for text */
        }

        /* Movie Container Styling */
        .movie-container {
            background-color: #ffeaf0; /* Light pink for containers */
            margin-bottom: 20px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Header */
        h2 {
            color: #d86a7a; /* Vibrant pink for headers */
            text-align: center;
            margin-top: 0;
            font-size: 24px;
            font-weight: bold;
        }

        /* Movie Title Styling */
        .movie-title {
            font-size: 20px;
            font-weight: bold;
            color: #b85968; /* Deeper pink for movie titles */
            margin-bottom: 10px;
        }

        /* Movie Details Styling */
        .movie-details {
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 10px;
        }

        /* Show Details Styling */
        .show-details {
            font-size: 13px;
            line-height: 1.6;
            background-color: #f8c8d4; /* Slightly darker pink for showtime details */
            padding: 10px;
            border-radius: 8px;
            color: #4b2c38;
            margin-bottom: 10px;
        }
        .show-details strong {
            color: #7d3542; /* Distinct color for labels */
        }

        /* Action Links Styling */
        .action-links {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }
        .action-links a {
            text-decoration: none;
            color: #ffffff;
            background-color: #d86a7a; /* Vibrant pink for buttons */
            padding: 8px 12px;
            border-radius: 5px;
            font-weight: 500;
            font-size: 14px;
            text-align: center;
            transition: background-color 0.3s;
        }
        .action-links a:hover {
            background-color: #b85968; /* Slightly deeper pink on hover */
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            .movie-container {
                padding: 15px;
            }
            h2 {
                font-size: 20px;
            }
            .movie-title {
                font-size: 18px;
            }
            .movie-details {
                font-size: 13px;
            }
            .action-links a {
                font-size: 13px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Movie Report</h2>
    <c:forEach var="movie" items="${movieList}">
        <div class="movie-container">
            <!-- Movie Title -->
            <div class="movie-title">
                ${movie.movieName} (Movie ID: ${movie.movieId})
            </div>

            <!-- Movie Details -->
            <div class="movie-details">
                <strong>Language:</strong> ${movie.language}<br>
                <strong>Genre:</strong> ${movie.genre}<br>
                <strong>Duration:</strong> ${movie.duration}<br>
                <strong>Rating:</strong> ${movie.rating}
            </div>

            <!-- Show Details -->
            <c:forEach var="show" items="${movieMap[movie.movieId]}">
                <div class="show-details">
                    <strong>Show Time:</strong> ${show.showTimeName}<br>
                    <strong>Royal Seat:</strong> ${show.royalSeat}<br>
                    <strong>Royal Booked:</strong> ${show.royalBooked}<br>
                    <strong>Premier Seat:</strong> ${show.premierSeat}<br>
                    <strong>Premier Booked:</strong> ${show.premierBooked}
                </div>
            </c:forEach>

            <!-- Action Links -->
            <div class="action-links">
                <a href="${pageContext.request.contextPath}/updateMovieShow/${movie.movieId}">Show Time Update</a>
                <a href="${pageContext.request.contextPath}/movieUpdate/${movie.movieId}">Movie Update</a>
                <a href="${pageContext.request.contextPath}/movieDeletion/${movie.movieId}">Movie Deletion</a>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>