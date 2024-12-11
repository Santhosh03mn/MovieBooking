<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer List</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f4f7fa;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #3c3c3c;
            margin-bottom: 30px;
            font-size: 2rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 20px;
            text-align: left;
        }

        th {
            background-color: #6c5ce7;
            color: #fff;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
        }

        tr {
            transition: background-color 0.3s ease;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .no-data {
            text-align: center;
            font-size: 1.2rem;
            color: #555;
            margin-top: 50px;
        }

        .table-container {
            overflow-x: auto;
            margin-top: 40px;
        }

        .no-data {
            font-size: 1.3rem;
            font-weight: 600;
            color: #ff6b6b;
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 1.5rem;
            }

            table {
                width: 100%;
            }

            th, td {
                padding: 8px 12px;
            }
        }
    </style>
</head>
<body>

    <h1>Customer List</h1>

    <c:if test="${not empty customers}">
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td>${customer.username}</td>
                            <td>${customer.name}</td>
                            <td>${customer.email}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>

    <c:if test="${empty customers}">
        <div class="no-data">No customers found.</div>
    </c:if>

</body>
</html>
