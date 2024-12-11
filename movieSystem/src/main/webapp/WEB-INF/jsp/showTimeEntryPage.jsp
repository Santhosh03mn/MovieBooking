<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Time Entry Page</title>
<style>
   /* General page styling */
body {
    font-family: Arial, sans-serif;
    background-color: #fbe4f0; /* Mild Light Pink Background */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* Container styling with Flexbox */
.container {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 80%;
    height: 70vh; /* Adjust container height */
    background-color: #fff;
    border-radius: 8px; /* Optional: for rounded corners */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Left side - Image */
.image-container {
    flex: 1; /* Takes up half of the space */
    background-image: url('https://png.pngtree.com/background/20240723/original/pngtree-white-background-conference-table-with-3d-figures-engaging-in-a-meeting-picture-image_9834909.jpg');
    background-size: cover;
    background-position: center;
    height: 100%;
    border-radius: 8px 0 0 8px; /* Rounded corners on the left */
}

/* Right side - Form */
.form-container {
    flex: 1; /* Takes up the other half of the space */
    padding: 40px;
    height: 100%;
    overflow-y: auto;
    display: flex;
    flex-direction: column;
    justify-content: center; /* Center content vertically */
    align-items: center; /* Center content horizontally */
    text-align: center;
}

/* Header styling */
h1 {
    color: #b85968; /* Soft Pink Header */
    font-size: 24px;
    margin-bottom: 10px;
}

h2 {
    color: #b85968;
    margin-bottom: 20px;
    font-size: 18px;
}

/* Form styling */
label {
    display: block;
    margin: 12px 0 4px;
    font-weight: bold;
    color: #333;
    font-size: 16px;
}

form input[type="text"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 1em;
    background-color: #fff; /* White background for inputs */
}

/* Button styling */
button[type="submit"], button[type="reset"] {
    padding: 12px 24px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 1em;
    font-weight: bold;
    margin-top: 15px; /* Increased spacing between buttons */
}

/* Submit Button */
button[type="submit"] {
    background-color: #b85968; /* Soft Pink Submit Button */
    color: #fff;
    margin-right: 10px; /* Add spacing between buttons */
}

button[type="submit"]:hover {
    background-color: #9b4960; /* Darker Pink Hover */
}

/* Reset Button */
button[type="reset"] {
    background-color: #4CAF50; /* Green Reset Button */
    color: #fff;
}

button[type="reset"]:hover {
    background-color: #45a049; /* Darker Green Hover */
}
</style>
</head>
<body>
    <div class="container">
        <!-- Left side: Image -->
        <div class="image-container"></div>

        <!-- Right side: Form -->
        <div class="form-container">
            <h1>Show Time Entry</h1>
            <form:form action="/addShowTime" method="post" modelAttribute="ShowTimeRecord">
                <form:hidden path="showTimeId"/>
                <form:hidden path="showTimeRoyalPrice"/>

                <label>Show Time Name:</label>
                <form:input path="showTimeName" />

                <label>Premier Price:</label>
                <form:input path="showTimePremierPrice" />

                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </form:form>
        </div>
    </div>
</body>
</html>