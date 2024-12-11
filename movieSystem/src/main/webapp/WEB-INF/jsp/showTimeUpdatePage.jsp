<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Show Time</title>
    <style>
        /* General page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #fbe4f0; /* Light Pink Background */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
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
            text-decoration: none;
            cursor: pointer;
        }

        
        /* Container for the form */
        .form-container {
            max-width: 600px;
            width: 100%;
            background-color: #fff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px 30px;
        }

        /* Heading style */
        h1 {
            text-align: center;
            color: #f28ab2; /* Soft pink color */
            margin-bottom: 20px;
            font-size: 1.8em;
        }

        /* Form styling */
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        /* Form group styling */
        .form-group {
            display: flex;
            flex-direction: column;
        }

        /* Label styling */
        label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        /* Input fields styling */
        input[type="text"], input[type="number"] {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 4px;
            width: 100%;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #f28ab2; /* Soft pink border on focus */
            box-shadow: 0 0 5px rgba(242, 138, 178, 0.5);
            outline: none;
        }

        /* Button styling */
        button {
            padding: 12px;
            font-size: 1em;
            color: #fff;
            background-color: #f28ab2; /* Soft pink color */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background-color: #e16c8c; /* Darker pink hover effect */
        }
    </style>
</head>
<body>
    <!-- Back button -->
    <a href="/showTimeReport" class="back-button">&lt;</a>

    <div class="form-container">
        <h1>Update ShowTime</h1>
        <form action="/showTimeUpdation" method="post">
            <div class="form-group">
                <label>ShowTime ID:</label>
                <input type="text" value="${ShowTimeRecord.showTimeId}" readonly>
                <input type="hidden" name="showTimeId" value="${ShowTimeRecord.showTimeId}">
            </div>
            <div class="form-group">
                <label>ShowTime Name:</label>
                <input type="text" value="${ShowTimeRecord.showTimeName}" readonly>
            </div>
            <div class="form-group">
                <label>Royal Price:</label>
                <input type="text" value="${ShowTimeRecord.showTimeRoyalPrice}" readonly>
            </div>
            <div class="form-group">
                <label for="premierPrice">Premier Price:</label>
                <input type="number" step="0.01" name="showTimePremierPrice" value="${ShowTimeRecord.showTimePremierPrice}" required>
            </div>
            <button type="submit">Update Show Time</button>
        </form>
    </div>
</body>
</html>