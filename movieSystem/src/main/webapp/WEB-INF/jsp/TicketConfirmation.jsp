<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ticket Confirmation</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #fff;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            animation: fadeIn 1s ease-out;
        }
        h1 {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        td {
            text-align: left;
            padding: 8px 5px;
            font-size: 16px;
        }
        td:first-child {
            font-weight: bold;
            color: #555;
        }
        td:last-child {
            text-align: right;
            color: #333;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        /* Responsive Design */
        @media (max-width: 480px) {
            .container {
                padding: 20px;
            }
            h1 {
                font-size: 20px;
            }
            td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Ticket Booking Confirmed!</h1>
        <table>
            <tr>
                <td>Movie:</td>
                <td>${movieName}</td>
            </tr>
            <tr>
                <td>Show Time:</td>
                <td>${showTimeName}</td>
            </tr>
            <tr>
                <td>Seat Type:</td>
                <td>${seatType}</td>
            </tr>
            <tr>
                <td>Number of Seats:</td>
                <td>${numberOfSeats}</td>
            </tr>
            <tr>
                <td>Transaction ID:</td>
                <td>${transactionId}</td>
            </tr>
            <tr>
                <td>Total Amount:</td>
                <td>₹ ${totalAmount}</td>
            </tr>
        </table>
    </div>
</body>
</html>
