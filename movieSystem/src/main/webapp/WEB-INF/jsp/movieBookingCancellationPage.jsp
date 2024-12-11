<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.infosys.movieSystem.bean.TicketBooking" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Cancellation</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Arial', Helvetica, sans-serif;
        }

        body {
            background-color: #fce4ec;
            color: #333;
            padding: 30px;
            margin: 0;
        }

        h1 {
            text-align: center;
            color: #e91e63;
            font-size: 2rem;
            margin-bottom: 40px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .ticket-list {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .ticket-card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            width: 280px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .ticket-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        .ticket-card h3 {
            margin: 0 0 10px;
            font-size: 1.2rem;
            color: #6c5ce7;
        }

        .ticket-card p {
            margin: 8px 0;
            font-size: 1rem;
            color: #555;
        }

        .ticket-card .status-confirmed {
            color: green;
            font-weight: bold;
        }

        .ticket-card .status-cancelled {
            color: red;
            font-weight: bold;
        }

        .cancel-btn {
            background-color: #f48fb1;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
            font-size: 1rem;
        }

        .cancel-btn:hover {
            background-color: #ec407a;
        }

        .success-message, .error-message {
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
        }

        .success-message {
            color: green;
        }

        .error-message {
            color: red;
        }

        .no-bookings {
            text-align: center;
            color: #e91e63;
            font-size: 18px;
            margin-top: 30px;
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 1.5rem;
            }

            .ticket-card {
                width: 100%;
                padding: 15px;
            }
        }
    </style>
</head>
<body>

    <h1>Your Booked Tickets</h1>

    <!-- Display success or error messages -->
    <c:if test="${not empty successMessage}">
        <div class="success-message">
            ${successMessage}
        </div>
    </c:if>
    <c:if test="${not empty errorMessage}">
        <div class="error-message">
            ${errorMessage}
        </div>
    </c:if>

    <div class="ticket-list">
        <!-- Iterate over the customer's tickets -->
        <c:forEach var="booking" items="${bookings}">
            <div class="ticket-card">
                <h3>Ticket ID: ${booking.ticketId}</h3>
                <p><strong>Movie Name:</strong> ${booking.movieName}</p>
                <p><strong>Showtime:</strong> ${booking.showTimeName}</p>
                <p><strong>Seat Type:</strong> ${booking.seatType}</p>
                <p><strong>Seats Booked:</strong> ${booking.numberOfSeatBooking}</p>
                <p><strong>Total Amount:</strong> $${booking.amountPayable}</p>
                <p><strong>Transaction ID:</strong> ${booking.transactionId}</p>
                <p class="${booking.status eq 'Confirmed' ? 'status-confirmed' : 'status-cancelled'}">
                    <strong>Status:</strong> ${booking.status}
                </p>

                <!-- Only show the cancel button for confirmed tickets -->
                <c:if test="${booking.status == 'Confirmed'}">
                    <form action="/cancelTicket" method="post">
                        <input type="hidden" name="ticketId" value="${booking.ticketId}">
                        <button type="submit" class="cancel-btn">Cancel Ticket</button>
                    </form>
                </c:if>
            </div>
        </c:forEach>

        <!-- If no bookings are available -->
        <c:if test="${empty bookings}">
            <div class="no-bookings">
                You have no tickets booked.
            </div>
        </c:if>
    </div>

</body>
</html>
