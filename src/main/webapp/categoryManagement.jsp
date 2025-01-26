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
    <title>Category Management Dashboard</title>
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
                <h2 class="text-white">Category Hub</h2>
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
                        <h1 class="display-6">Category Management</h1>
                    </div>
                </div>

                <div class="row">
                    <!-- Add New Category Card -->
                    <div class="col-md-4">
                        <div class="card card-custom mb-4">
                            <div class="card-header bg-primary text-white">
                                <h5 class="card-title mb-0">Add New Category</h5>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="mb-3">
                                        <label class="form-label">Category Name</label>
                                        <input type="text" class="form-control" placeholder="Category Name">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Description</label>
                                        <textarea class="form-control" placeholder="Category Description"></textarea>
                                    </div>
                                    <button class="btn btn-primary btn-custom mt-3 w-100">
                                        <i class="fas fa-plus me-2"></i> Add Category
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Categories List Card -->
                    <div class="col-md-8">
                        <div class="card card-custom">
                            <div class="card-header bg-success text-white">
                                <h5 class="card-title mb-0">All Categories</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>Category ID</th>
                                            <th>Category Name</th>
                                            <th>Description</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1001</td>
                                            <td>Car</td>
                                            <td>Various car for kids</td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-primary"><i class="fas fa-edit"></i></button>
                                                <button class="btn btn-sm btn-outline-danger"><i class="fas fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>#002</td>
                                            <td>Electronics</td>
                                            <td>Gadgets and electronics</td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-primary"><i class="fas fa-edit"></i></button>
                                                <button class="btn btn-sm btn-outline-danger"><i class="fas fa-trash"></i></button>
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
    const editCategoryModal = document.getElementById('editCategoryModal');
    const deleteCategoryModal = document.getElementById('deleteCategoryModal');

    editCategoryModal.addEventListener('show.bs.modal', function (event) {
        const button = event.relatedTarget;
        const categoryId = button.getAttribute('data-categoryid');
        const categoryName = button.getAttribute('data-categoryname');
        const description = button.getAttribute('data-description');

        document.getElementById('editCategoryId').value = categoryId;
        document.getElementById('editCategoryName').value = categoryName;
        document.getElementById('editDescription').value = description;
    });

    deleteCategoryModal.addEventListener('show.bs.modal', function (event) {
        const button = event.relatedTarget;
        const categoryId = button.getAttribute('data-categoryid');
        document.getElementById('deleteCategoryId').value = categoryId;
    });
</script>
</body>
</html>
