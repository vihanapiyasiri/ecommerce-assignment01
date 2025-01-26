<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
            overflow-x: hidden;
        }
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #4a6cf7, #8592e0);
            color: white;
            padding-top: 30px;
            width: 250px;
            position: fixed;
        }
        .sidebar .nav-link {
            color: rgba(255,255,255,0.7);
            transition: all 0.3s ease;
        }
        .sidebar .nav-link:hover, .sidebar .nav-link.active {
            color: white;
            transform: translateX(10px);
        }
        .sidebar .text-center {
            margin-bottom: 20px;
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .card {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .footer {
            background-color: #7be6f3;
            text-align: center;
            padding: 10px;
            position: absolute;
            bottom: 0;
            width: 100%;
            color: white;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="text-center mb-5">
        <h2 class="text-white">Dashboard</h2>
    </div>
    <nav class="nav flex-column">
        <a class="nav-link active" href="admin_dashboard.jsp"><i class="fas fa-chart-line me-2"></i>Dashboard</a>
        <a class="nav-link" href="index.jsp"><i class="fas fa-cog me-2"></i>Home</a>
        <a class="nav-link" href="orderManagement.jsp"><i class="fas fa-shopping-cart me-2"></i>Orders</a>
        <a class="nav-link" href="userManagement.jsp"><i class="fas fa-users me-2"></i>Customers</a>
        <a class="nav-link" href="productManagement.jsp"><i class="fas fa-boxes me-2"></i>Products</a>
    </nav>
</div>

<!-- Main Content -->
<div class="main-content">
    <header class="bg-light py-2 border-bottom">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div class="d-flex align-items-center">
                    <img src="images/logo.png" alt="Toys Store Logo" style="max-height: 50px;">
                </div>
<%--                <nav class="d-flex flex-grow-1 justify-content-center align-items-center">--%>
<%--                    <ul class="nav">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link text-dark" href="index.jsp">Home</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link text-dark" href="userManagement.jsp">Users</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link text-dark" href="categoryManagement.jsp">Category</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link text-dark" href="productManagement.jsp">Products</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link text-dark" href="orderManagement.jsp">Orders</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </nav>--%>
<%--                <div class="d-flex">--%>
<%--                    <a href="index.jsp" class="text-dark"><i class="bi bi-box-arrow-right"></i></a>--%>
<%--                </div>--%>
            </div>
        </div>
    </header>

    <div class="container-fluid mt-5">
        <h2 class="mb-4 text-center">Welcome to Your Admin Dashboard</h2>
        <div class="row justify-content-center mb-4">
            <!-- Products Card -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card border-info shadow-sm" style="height: 150px;">
                    <div class="card-body d-flex flex-column justify-content-center text-center">
                        <h5 class="card-title text-info">Products</h5>
                        <h3 class="display-6">10</h3>
                    </div>
                </div>
            </div>

            <!-- Orders Card -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card border-danger shadow-sm" style="height: 150px;">
                    <div class="card-body d-flex flex-column justify-content-center text-center">
                        <h5 class="card-title text-danger">Orders</h5>
                        <h3 class="display-6">20</h3>
                    </div>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <!-- Users Card -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card border-primary shadow-sm" style="height: 150px;">
                    <div class="card-body d-flex flex-column justify-content-center text-center">
                        <h5 class="card-title text-primary">Users</h5>
                        <h3 class="display-6">30</h3>
                    </div>
                </div>
            </div>

            <!-- Categories Card -->
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card border-success shadow-sm" style="height: 150px;">
                    <div class="card-body d-flex flex-column justify-content-center text-center">
                        <h5 class="card-title text-success">Categories</h5>
                        <h3 class="display-6">40</h3>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer mt-5 text-center py-3">
            <p class="mb-0 text-muted">&copy; 2025 Your Company</p>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
