<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - CRM</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f0f0f0;
        }

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
            width: 400px;
        }

        .login-container h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group .submit-btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-group .submit-btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="/loginForm" method="post">
        <div class="form-group">
            <label>Email Id:</label>
            <input type="email" id="username" name="email1" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="pass1" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Login" class="submit-btn">
        </div>
    </form>


    <script>
        function validateForm() {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;

            if (username.trim() === '' || password.trim() === '') {
                alert('email id and password did not match.');
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</div>
</body>


</html>

