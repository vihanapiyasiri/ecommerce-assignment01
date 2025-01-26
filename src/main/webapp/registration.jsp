<%--
  Created by IntelliJ IDEA.
  User: Vihana Piyasiri
  Date: 1/24/2025
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        /* Color Scheme */
        :root {
            --primary-color: #4a6cf7; /* Blue */
            --secondary-color: #8592e0; /* Light Blue */
            --light-bg: #f4f7fa; /* Very light background */
            --white: #ffffff;
            --dark-text: #333333;
        }

        body {
            background-color: var(--light-bg);
            font-family: 'Arial', sans-serif;
            color: var(--dark-text);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        .card-header {
            background-color: var(--primary-color);
            color: var(--white);
            border-radius: 15px 15px 0 0;
            text-align: center;
            padding: 20px;
            font-size: 24px;
            font-weight: 600;
        }

        .nav-tabs .nav-item .nav-link {
            color: var(--primary-color);
            font-weight: bold;
            padding: 10px 20px;
            font-size: 16px;
        }

        .nav-tabs .nav-item .nav-link.active {
            background-color: var(--white);
            border-color: var(--primary-color);
        }

        .form-label {
            font-weight: 500;
            margin-bottom: 5px;
        }

        .form-control {
            border-radius: 10px;
            box-shadow: none;
            padding: 12px;
            font-size: 16px;
            transition: all 0.3s ease-in-out;
        }

        .form-control:focus {
            box-shadow: 0 0 5px 2px var(--primary-color);
        }

        .input-group button {
            border-radius: 0 10px 10px 0;
        }

        .btn-danger {
            background-color: var(--primary-color);
            color: var(--white);
            font-weight: 600;
            padding: 10px 20px;
            width: 100%;
            border-radius: 10px;
            transition: background-color 0.3s ease;
        }

        .btn-danger:hover {
            background-color: var(--secondary-color);
        }

        .text-center img {
            max-width: 150px;
            margin-bottom: 20px;
        }

        .forgot-password {
            color: var(--primary-color);
            font-size: 14px;
            display: block;
            text-align: center;
            margin-top: 15px;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }

        .d-flex {
            align-items: center;
        }

        /* Responsive Design */
        @media (max-width: 576px) {
            .card {
                padding: 20px;
            }
        }
    </style>
</head>
<body>

<div class="card shadow-lg">
    <!-- Logo Section -->
    <div class="card-header">
        Toys Mania
    </div>

    <!-- Tabs -->
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="login-tab" data-bs-toggle="tab" data-bs-target="#login" type="button" role="tab" aria-controls="login" aria-selected="true">Login</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="signup-tab" data-bs-toggle="tab" data-bs-target="#signup" type="button" role="tab" aria-controls="signup" aria-selected="false">Sign Up</button>
        </li>
    </ul>

    <!-- Tab Content -->
    <div class="tab-content p-3">
        <!-- Login Tab -->
        <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
            <form id="loginForm">
                <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
                        <button class="btn btn-outline-secondary" type="button" onclick="togglePasswordVisibility('password', this)">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>
                <div class="d-flex justify-content-between mb-3">
                    <button type="submit" class="btn btn-danger">Log In</button>
                    <div>
                        <input type="checkbox" id="remember-me" class="form-check-input">
                        <label for="remember-me" class="form-check-label">Remember me</label>
                    </div>
                </div>
                <a href="#" class="forgot-password">Forgot your password?</a>
            </form>
        </div>

        <!-- Sign Up Tab -->
        <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">
            <form id="signupForm">
                <div class="mb-3">
                    <label for="fullname" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="fullname" placeholder="Enter full name" required>
                </div>
                <div class="mb-3">
                    <label for="signup-email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="signup-email" placeholder="Enter email" required>
                </div>
                <div class="mb-3">
                    <label for="signup-password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="signup-password" placeholder="Create password" required>
                </div>
                <div class="mb-3">
                    <label for="confirm-password" class="form-label">Confirm Password</label>
                    <input type="password" class="form-control" id="confirm-password" placeholder="Confirm password" required>
                </div>
                <button type="submit" class="btn btn-danger">Sign Up</button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function togglePasswordVisibility(inputId, button) {
        const input = document.getElementById(inputId);
        const icon = button.querySelector('i');
        if (input.type === "password") {
            input.type = "text";
            icon.classList.replace("bi-eye", "bi-eye-slash");
        } else {
            input.type = "password";
            icon.classList.replace("bi-eye-slash", "bi-eye");
        }
    }
</script>

</body>
</html>
