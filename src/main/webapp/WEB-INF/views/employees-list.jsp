<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Table</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h3>Employee Table</h3>
    <table id="employeeTable" class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Password</th>

        </tr>
        </thead>
        <tbody>
        <!-- Table body content will be dynamically populated using JavaScript -->
        </tbody>
    </table>
</div>

<!-- JavaScript to fetch and populate the employee table -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        fetch("/getAllEmployees")
            .then(response => response.json())
            .then(data => {
                const tableBody = document.getElementById("employeeTable");
                data.forEach(employee => {
                    const row = tableBody.insertRow();
                    const empIdCell = row.insertCell(0);
                    const nameCell = row.insertCell(1);
                    const emailCell = row.insertCell(2);
                    const phoneCell = row.insertCell(3);
                    const passCell  = row.insertCell(4);
                    empIdCell.innerHTML = employee.empId;
                    nameCell.innerHTML = employee.name;
                    emailCell.innerHTML = employee.email;
                    phoneCell.innerHTML = employee.phone;
                    passCell.innerHTML = employee.password;
                });
            })
            .catch(error => {
                console.error("Error:", error);
                alert("Failed to fetch employees!");
            });
    });
</script>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
