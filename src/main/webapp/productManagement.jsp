<%--
  Created by IntelliJ IDEA.
  User: Vihana Piyasiri
  Date: 1/24/2025
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #4a6cf7;
            --secondary-color: #8592e0;
            --light-bg: #f4f7fa;
        }
        body {
            background-color: var(--light-bg);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding-top: 30px;
        }
        .sidebar .nav-link {
            color: rgba(255,255,255,0.7);
            transition: all 0.3s ease;
        }
        .sidebar .nav-link:hover, .sidebar .nav-link.active {
            color: white;
            transform: translateX(10px);
        }
        .card-custom {
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            transition: all 0.3s ease;
        }
        .card-custom:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 45px rgba(0,0,0,0.1);
        }
        .table-hover tbody tr:hover {
            background-color: rgba(74,108,247,0.05);
        }
        .btn-custom {
            border-radius: 30px;
            padding: 10px 20px;
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-2 sidebar">
            <div class="text-center mb-5">
                <h2 class="text-white">Product Hub</h2>
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
        <div class="col-md-10 bg-light">
            <div class="container-fluid py-4">
                <div class="row mb-4">
                    <div class="col">
                        <h1 class="display-6">Product Management</h1>
                    </div>
                </div>

                <div class="row">
                    <!-- Product Creation Card -->
                    <div class="col-md-4">
                        <div class="card card-custom mb-4">
                            <div class="card-header bg-primary text-white">
                                <h5 class="card-title mb-0">Add New Product</h5>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="mb-3">
                                        <label class="form-label">Product Name</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Category</label>
                                        <select class="form-select">
                                            <option>Select Category</option>
                                            <option>Electronics</option>
                                            <option>Fashion</option>
                                        </select>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <label class="form-label">Price</label>
                                            <input type="number" class="form-control" required>
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">Stock</label>
                                            <input type="number" class="form-control" required>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-custom mt-3 w-100">
                                        <i class="fas fa-plus me-2"></i>Add Product
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Product List Card -->
                    <div class="col-md-8">
                        <div class="card card-custom">
                            <div class="card-header bg-success text-white">
                                <h5 class="card-title mb-0">Product List</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>Product ID</th>
                                            <th>Name</th>
                                            <th>Discription</th>
                                            <th>Imageurl</th>
                                            <th>Category</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>2001</td>
                                            <td>Classic car</td>
                                            <td>Car</td>
                                            <td>Car</td>
                                            <td>Car</td>
                                            <td>$799</td>
                                            <td>50</td>
                                            <td>
                                                <div class="btn-group">
                                                    <button class="btn btn-sm btn-outline-primary"><i class="fas fa-edit"></i></button>
                                                    <button class="btn btn-sm btn-outline-danger"><i class="fas fa-trash"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Modal Pre-fill Script -->
<script>
    const editProductModal = document.getElementById('editProductModal');
    const deleteProductModal = document.getElementById('deleteProductModal');

    editProductModal.addEventListener('show.bs.modal', function (event) {
        const button = event.relatedTarget;
        const productId = button.getAttribute('data-productid');
        const productName = button.getAttribute('data-name');
        const category = button.getAttribute('data-category');
        const price = button.getAttribute('data-price');
        const stock = button.getAttribute('data-stock');

        document.getElementById('editProductId').value = productId;
        document.getElementById('editProductName').value = productName;
        document.getElementById('editCategory').value = category;
        document.getElementById('editPrice').value = price;
        document.getElementById('editStock').value = stock;
    });

    deleteProductModal.addEventListener('show.bs.modal', function (event) {
        const button = event.relatedTarget;
        const productId = button.getAttribute('data-productid');
        document.getElementById('deleteProductId').value = productId;
    });
</script>
</body>
</html>
