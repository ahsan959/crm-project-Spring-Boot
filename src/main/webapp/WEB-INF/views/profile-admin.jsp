<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .header-1 {
            background-color: #2980b9;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-height: 100px; /* Adjusted max header height */
        }

        .header-2 {
            background-color: #000;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Style for dropdown arrow */
        .dropdown-toggle::after {
            content: "\f078"; /* Font Awesome arrow-down icon */
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            margin-left: 5px;
        }

        .profile-content {
            padding: 20px;
        }

        .profile-content img {
            height: 80px;
            border-radius: 50%;
        }

        .avatar {
            height: 40px;
            border-radius: 50%;
        }

        .dropdown {
            position: relative;
        }

        .dropdown-menu {
            position: absolute;
            top: 100%;
            left: 0;
            min-width: 150px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 5px 0;
            z-index: 1;
            display: none;
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }

        .dropdown-item {
            padding: 8px 15px;
            color: #333;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s ease;
        }

        .dropdown-item:hover {
            background-color: #f1f1f1;
        }

        /* Custom dropdown styling */
        .dropdown-toggle {
            background-color: #007bff;
            border: none;
            color: #fff;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .dropdown-toggle:hover {
            background-color: #0056b3;
        }

        .btn-logout {
            background-color: #dc3545;
            border: none;
            color: #fff;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-logout:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<div class="header-1"> <!-- First Header with background color -->
    <div class="profile-content">
        <img src="admin.PNG.png" alt="CRM Logo">
    </div>
    <div class="profile-content">
        <img src="https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png" alt="User Avatar" class="avatar">
        <h4 class="mt-2">Welcome, Admin!</h4>
    </div>
    <div class="profile-content">
        <button class="btn btn-logout" onclick="logout()">Logout</button>
    </div>
</div>
<div class="header-2"> <!-- Second Header with background color -->
    <div class="profile-content">
        <div class="dropdown">
            <button class="dropdown-toggle" type="button" id="employeeDropdown">
                Employees
            </button>
            <div class="dropdown-menu" aria-labelledby="employeeDropdown">
                <a class="dropdown-item" href="addEmployee">Add Employee</a>
                <a class="dropdown-item" href="SeeAllEmployee">See All Employees</a>
            </div>
        </div>
    </div>
    <div class="profile-content">
        <div class="dropdown">
            <button class="dropdown-toggle" type="button" id="productDropdown">
                Products
            </button>
            <div class="dropdown-menu" aria-labelledby="productDropdown">
                <a class="dropdown-item" href="#">Create Product</a>
                <a class="dropdown-item" href="#">All Products</a>
            </div>
        </div>
    </div>
    <div class="profile-content">
        <div class="dropdown">
            <button class="dropdown-toggle" type="button" id="complaintDropdown">
                Complaints
            </button>
            <div class="dropdown-menu" aria-labelledby="complaintDropdown">
                <a class="dropdown-item" href="#">Complaints</a>
            </div>
        </div>
    </div>
</div>

<div class="container mt-4">
    <h3>welcome admin</h3>
    <h6>Now you can Handle the whole Application</h6>

</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    function logout() {
        // Replace this with the URL or function to handle logout on the server.
        // For example, you can redirect to a logout page or trigger an API request to clear the user session.
        console.log("Logout button clicked.");
        // Here, you can redirect the user to the logout page or perform the logout operation.
        // For example:
        // window.location.href = "/logout";
    }
</script>
</body>
</html>
