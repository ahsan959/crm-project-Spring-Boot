<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRM Application</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom CSS for the header */
        .header_design {
            padding: 10px 0;
            background-color: #007BFF;
        }

        /* Custom CSS for the dropdown */
        .dropdown-container {
            position: relative;
            display: inline-block;
        }

        .dropdown-button {
            background-color: #17a2b8;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-item {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-item:hover {
            background-color: #ddd;
        }

        .dropdown-container:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>

<div class="header_design">
    <div class="container">
        <div class="row">
            <div class="col-3">
                <a href="home" style="color: white; font-size: 24px; text-decoration: none;">CRM Application</a>
            </div>
            <div class="col-6"></div>
            <div class="col-3">
                <!-- Custom Dropdown -->
                <div class="dropdown-container">
                    <button class="dropdown-button">More</button>
                    <div class="dropdown-content">
                        <a href="home" class="dropdown-item">Home</a>
                        <a href="login" class="dropdown-item">Login</a>
                        <a href="#" class="dropdown-item">About Us</a>
                        <a href="#" class="dropdown-item">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container mt-4">
    <h3>Employee Table</h3>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>001</td>
            <td>John Doe</td>
            <td>john@example.com</td>
            <td>HR</td>
        </tr>
        <tr>
            <td>002</td>
            <td>Jane Smith</td>
            <td>jane@example.com</td>
            <td>Finance</td>
        </tr>
        <!-- Add more rows if needed -->
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
