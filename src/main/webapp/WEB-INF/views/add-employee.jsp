<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
            width: 400px;
            margin: 50px auto;
        }

        .form-container h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group select {
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

        .alert {
            display: none;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }

        .alert-success {
            background-color: #d4edda;
            border-color: #c3e6cb;
            color: #155724;
        }

        .alert-danger {
            background-color: #f8d7da;
            border-color: #f5c6cb;
            color: #721c24;
        }
    </style>
</head>
<body>
<jsp:include page="profile-admin.jsp"/>
<div class="form-container">
    <h2>Add Employee</h2>
    <form action="/addEmpForm" method="post" onsubmit="submitForm(event)">
        <div class="form-group">
            <label>Employee Id:</label>
            <input type="number" id="firstName" name="empId" required>
        </div>
        <div class="form-group">
            <label for="firstName">Employee name</label>
            <input type="text" id="lastName" name="name" required>
        </div>

        <div class="form-group">
            <label for="firstName">Employee name</label>
            <input type="password" id="pass" name="password" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required>
        </div>

        <div class="form-group">
            <input type="submit" value="Add Employee" class="submit-btn">
        </div>
    </form>

    <!-- Alert div to show success message -->
    <div id="alertMessage" class="alert alert-success">
        Employee added successfully!
    </div>

    <!-- Alert div to show error message -->
    <div id="errorMessage" class="alert alert-danger">
        Failed to add employee!
    </div>
</div>

<script>
    function submitForm(event) {
        event.preventDefault();

        const form = event.target;
        const formData = new FormData(form);
        const data = {};
        formData.forEach((value, key) => {
            data[key] = value;
        });

        fetch("/addEmpForm", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(data)
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(result => {
                if (result !== null) {
                    // Show the success alert message
                    const alertMessage = document.getElementById("alertMessage");
                    alertMessage.style.display = "block";

                    // Hide the error alert message
                    const errorMessage = document.getElementById("errorMessage");
                    errorMessage.style.display = "none";

                    // Redirect to add-employee page after 2 seconds
                    setTimeout(() => {
                        window.location.href = "/addEmployee";
                    }, 2000); // 2 seconds delay
                } else {
                    // Show the error alert message
                    const errorMessage = document.getElementById("errorMessage");
                    errorMessage.style.display = "block";

                    // Hide the success alert message
                    const alertMessage = document.getElementById("alertMessage");
                    alertMessage.style.display = "none";
                }
            })
            .catch(error => {
                console.error("Error:", error);

                // Show the error alert message
                const errorMessage = document.getElementById("errorMessage");
                errorMessage.style.display = "block";

                // Hide the success alert message
                const alertMessage = document.getElementById("alertMessage");
                alertMessage.style.display = "none";
            });
    }
</script>
</body>
</html>
