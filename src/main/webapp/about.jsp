<%--
  Created by IntelliJ IDEA.
  User: Vihana Piyasiri
  Date: 1/25/2025
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Toys Store</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
    <style>
        .wave-section {
            background: #00bcd4;
            color: #fff;
            padding: 50px 0;
            clip-path: polygon(0 0, 100% 20%, 100% 100%, 0 80%);
        }
    </style>
</head>
<body>
<!-- Header Section -->
<header class="bg-light py-3 position-fixed w-100" style="z-index: 1030;">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <img src="<%= request.getContextPath() %>/images/toys-mania-42.png" alt="Toys Store Logo">
            </div>
            <nav>
                <ul class="nav">
                    <li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/about.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">On Sale</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Shop</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                </ul>
            </nav>
            <div>
                <a href="#" class="text-dark me-2"><i class="bi bi-search"></i></a>
                <a href="#" class="text-dark me-2"><i class="bi bi-heart"></i></a>
                <a href="<%= request.getContextPath() %>/registration.jsp" class="text-dark me-2"><i class="bi bi-person"></i></a>
                <a href="#" class="text-dark me-2"><i class="bi bi-cart"></i></a>
                <a href="#" class="text-dark"><i class="bi bi-box-arrow-right"></i></a>
            </div>
        </div>
    </div>
</header>

<main class="mt-5 pt-5">
    <!-- About Us Section -->
    <section class="container text-center my-5">
        <h1>About Our Online Store</h1>
        <div class="row align-items-center">
            <div class="col-md-6">
                <p>
                    Proin in nibh sed ex egestas feugiat sed at quam. Curabitur blandit odio quis enim pretium, sit est gravida. Donec sed auctor justo, eu porttitor velit. Donec eget ligula eros. Nulla sapien lacus, tristique vitae venenatis ut, ullamcorper eget ex. Morbi tincidunt tellus a nulla pulvinar lacinia. Mauris ac sapien quis eros cursus ornare volutpat non elit. Pellentesque fermentum id lacus in consectetur. Nunc pretium cursus lacus, at varius dui mollis posuere. Sed quis faucibus erat.  blandit libero ut tincidunt.                </p>
                <button class="btn btn-danger">Know More</button>
            </div>
            <div class="col-md-6">
                <img src="<%= request.getContextPath() %>/images/sample-toy.png" alt="Toy Image" class="img-fluid">
            </div>
        </div>
    </section>

    <!-- Wave Section -->
    <section class="wave-section text-center">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h3>50+</h3>
                    <p>Designs</p>
                </div>
                <div class="col">
                    <h3>100+</h3>
                    <p>Stores</p>
                </div>
                <div class="col">
                    <h3>6,000+</h3>
                    <p>Happy Users</p>
                </div>
                <div class="col">
                    <h3>7,889+</h3>
                    <p>5 Star Reviews</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="container text-center my-5">
        <h2>Client Testimonial</h2>
        <div class="row">
            <div class="col-md-4">
                <p>"Lorem ipsum dolor sit amet."</p>
                <h5>Andrew Black</h5>
                <p>Business</p>
            </div>
            <div class="col-md-4">
                <p>"Lorem ipsum dolor sit amet."</p>
                <h5>Andrew Black</h5>
                <p>Business</p>
            </div>
            <div class="col-md-4">
                <p>"Lorem ipsum dolor sit amet."</p>
                <h5>Andrew Black</h5>
                <p>Business</p>
            </div>
        </div>
    </section>
</main>

<!-- Footer Section -->
<footer class="bg-dark text-light py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h5>Welcome</h5>
                <p>Explore more about our branches and services.</p>
            </div>
            <div class="col-md-3">
                <h5>About Store</h5>
                <ul>
                    <li>Branches</li>
                    <li>FAQs</li>
                    <li>Terms</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Key Links</h5>
                <ul>
                    <li>Orders</li>
                    <li>Login</li>
                    <li>Contact</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Contact</h5>
                <p>Email: store@example.com</p>
                <p>Phone: 123-456-7890</p>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

