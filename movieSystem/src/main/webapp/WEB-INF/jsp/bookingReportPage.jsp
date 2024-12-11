<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.infosys.movieSystem.bean.TicketBooking" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Report</title>
    <style>
        /* Base body styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f8ff;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #ff6b98;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        /* Container for cards */
        .container {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: center;
            padding-bottom: 40px;
        }

        /* Card styling */
        .card {
            background: linear-gradient(145deg, #ffffff, #f1f1f1);
            border: 1px solid #ddd;
            border-radius: 15px;
            width: 320px;
            padding: 25px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            margin-top: 20px;
        }

        /* Hover effect for cards */
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        /* Card header */
        .card-header {
            font-size: 1.5rem;
            font-weight: bold;
            color: #333;
            text-align: center;
            margin-bottom: 15px;
            padding-bottom: 5px;
            border-bottom: 2px solid #ff6b98;
        }

        /* Card body */
        .card-body {
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .card-body p {
            margin: 10px 0;
            font-size: 1.1rem;
            color: #444;
        }

        /* Styling for status colors */
        .status-confirmed {
            color: #28a745;
            font-weight: bold;
            font-size: 1.2rem;
        }

        .status-cancelled {
            color: #dc3545;
            font-weight: bold;
            font-size: 1.2rem;
        }

        /* Footer for the card */
        .card-footer {
            text-align: center;
            font-size: 0.9rem;
            color: #777;
        }

        /* Styling for when no bookings are found */
        .no-bookings {
            text-align: center;
            font-size: 1.7rem;
            color: #ff6b98;
            width: 100%;
            margin-top: 50px;
        }

        /* Responsive styling for smaller screens */
        @media (max-width: 768px) {
            .container {
                justify-content: space-evenly;
            }

            .card {
                width: 90%;
            }
        }

    </style>
</head>
<body>
    <h1>Booking Report</h1>

    <div class="container">
        <!-- JSTL iteration for the bookings list -->
        <c:forEach var="booking" items="${bookings}">
            <div class="card">
                <div class="card-header">
                    Ticket ID: ${booking.ticketId}
                </div>
                <div class="card-body">
                    <p><strong>Movie Name:</strong> ${booking.movieName}</p>
                    <p><strong>Showtime:</strong> ${booking.showTimeName}</p>
                    <p><strong>Seat Type:</strong> ${booking.seatType}</p>
                    <p><strong>Seats Booked:</strong> ${booking.numberOfSeatBooking}</p>
                    <p><strong>Total Amount:</strong> $${booking.amountPayable}</p>
                    <p><strong>Transaction ID:</strong> ${booking.transactionId}</p>
                    <p class="${booking.status eq 'Confirmed' ? 'status-confirmed' : 'status-cancelled'}"><strong>Status:</strong> ${booking.status}</p>
                </div>
                <div class="card-footer">
                    <!-- No actions here anymore -->
                </div>
            </div>
        </c:forEach>

        <!-- If no bookings found -->
        <c:if test="${empty bookings}">
            <div class="no-bookings">
                No bookings found.
            </div>
        </c:if>
    </div>
</body>
</html>
