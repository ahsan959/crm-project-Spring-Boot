<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            margin-top: 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #007BFF;
        }

        h1 {
            margin: 0;
        }

        .logout-button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .logout-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="logo">CRM System</div>
    <h1>Welcome :${session_employee.getName()}</h1>
    <!-- Add more content specific to the employee home page -->

    <!-- Logout button -->
    <form action="logout" method="post">
        <button type="submit" class="logout-button">Logout</button>
    </form>
</div>


</body>
</html>
