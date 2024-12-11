<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Update Page</title>
    <style>
/* General Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #fde4e4; /* Light pink background */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    width: 450px; /* Slightly increased width for better spacing */
    padding: 30px;
    background-color: #fff; /* White container background */
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2); /* More prominent shadow for depth */
    border-radius: 12px; /* Smooth border radius */
    text-align: center;
}

h2 {
    font-size: 26px;
    font-weight: bold;
    color: #c2185b; /* Deep pink header */
    margin-bottom: 25px;
}

.form-group {
    margin-bottom: 20px; /* Increased spacing between fields */
    text-align: left;
}

.form-group label {
    font-weight: bold;
    display: block;
    margin-bottom: 8px; /* Better separation between label and input */
    color: #333;
    font-size: 14px;
}

.form-group input[type="text"],
.form-group input[type="number"] {
    width: 100%;
    padding: 10px; /* Increased padding for larger inputs */
    border: 1px solid #ddd; /* Soft border for inputs */
    border-radius: 8px;
    box-sizing: border-box;
    font-size: 15px;
    color: #333;
}

.form-group input[readonly] {
    background-color: #f8d7da; /* Subtle pink background for read-only fields */
    color: #6c757d; /* Gray text */
}

/* Buttons styling */
.buttons {
    margin-top: 25px; /* Increased spacing between form and buttons */
    display: flex;
    justify-content: space-between; /* Equal spacing for buttons */
}

.buttons input[type="submit"],
.buttons input[type="reset"] {
    padding: 10px 20px; /* Larger buttons */
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: transform 0.2s, background-color 0.3s;
}

.buttons input[type="submit"] {
    background-color: #e91e63; /* Bright pink for submit */
}

.buttons input[type="submit"]:hover {
    background-color: #c2185b; /* Darker pink on hover */
    transform: scale(1.05); /* Slight scale effect */
}

.buttons input[type="reset"] {
    background-color: #607d8b; /* Muted blue-gray for reset */
}

.buttons input[type="reset"]:hover {
    background-color: #455a64; /* Darker blue-gray on hover */
    transform: scale(1.05); /* Slight scale effect */
}

    </style>
</head>
<body>

<div class="container">
    <h2>Movie Update Page</h2>
    <form action="/movieUpdate" method="post">
        <div class="form-group">
            <label for="movieId">The Movie Id:</label>
            <input type="text" id="movieId" name="movieId" value="${movie.movieId}" readonly>
        </div>

        <div class="form-group">
            <label for="movieName">Movie Name:</label>
            <input type="text" id="movieName" name="movieName" value="${movie.movieName}" readonly>
        </div>

        <div class="form-group">
            <label for="language">Movie Language:</label>
            <input type="text" id="language" name="language" value="${movie.language}" readonly>
        </div>

        <div class="form-group">
            <label for="genre">Movie Genre:</label>
            <input type="text" id="genre" name="genre" value="${movie.genre}" readonly>
        </div>

        <div class="form-group">
            <label for="duration">Update Duration:</label>
            <input type="text" id="duration" name="duration" value="${movie.duration}" readonly>
        </div>

        <div class="form-group">
            <label for="rating">Update Ratings:</label>
            <input type="number" id="rating" name="rating" step="0.01" min="0" max="10" value="${movie.rating}">
        </div>

        <div class="buttons">
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </div>
    </form>
</div>

</body>
</html>