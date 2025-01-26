<%--
  Created by IntelliJ IDEA.
  User: Vihana Piyasiri
  Date: 1/24/2025
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Model Car Paradise</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #3A6EA5;
            --secondary-color: #F5D6BA;
            --accent-color: #A86464;
            --text-color: #333333;
            --background-color: #F9F5F0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
        }

        .hero-section {
            background-color: var(--primary-color);
            color: white;
            padding: 3rem 0;
            border-radius: 0 0 20px 20px;
        }

        .hero-section h1 {
            font-size: 2.8rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .btn-primary {
            background-color: var(--accent-color);
            border-color: var(--accent-color);
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #8A5353;
            transform: scale(1.05);
        }

        .card {
            border: none;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .nav-link {
            color: var(--text-color) !important;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: var(--primary-color) !important;
        }

        .circle-img {
            border-radius: 50%;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .circle-img:hover {
            transform: scale(1.1);
        }

        .limited-offer {
            background-color: var(--secondary-color);
            color: var(--text-color);
            border-radius: 15px;
            padding: 2rem;
        }

        footer {
            background-color: var(--primary-color);
            color: white;
            padding: 3rem 0;
        }

        @media (max-width: 768px) {
            .hero-section {
                text-align: center;
            }
            .hero-section .btn {
                margin-bottom: 1rem;
            }
        }
    </style>
</head>
<body>

<!-- Header Section -->
<header class="bg-light py-3 border-bottom">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <!-- Left Section -->
            <div class="d-flex align-items-center">
                <img src="images/logo.png" alt="Model Car Store Logo">
            </div>

            <!-- Right Section: Navigation -->
            <nav class="d-flex flex-grow-1 justify-content-center align-items-center">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="#">On Sale</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="#">Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="#">Contact Us</a>
                    </li>
                </ul>
            </nav>

            <!-- Icons Section -->
            <div class="d-flex">
                <a href="#" class="text-dark me-3"><i class="bi bi-search"></i></a>
                <a href="#" class="text-dark me-3"><i class="bi bi-heart"></i></a>
                <a href="registration.jsp" class="text-dark me-3"><i class="bi bi-person"></i></a>
                <a href="#" class="text-dark me-3"><i class="bi bi-cart"></i></a>
                <a href="#" class="text-dark"><i class="bi bi-box-arrow-right"></i></a>
            </div>
        </div>
    </div>
</header>

<a href="admin_dashboard.jsp">Admin Dashboard</a>

<!-- Hero Section -->
<section class="hero-section d-flex align-items-center">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 hero-content">
                <h1 class="main">Best Model Cars Collection</h1>
                <p>Starting from $29</p>
                <button class="btn btn-primary btn-lg">Shop Now</button>
            </div>
            <div class="col-md-6 hero-image text-center">
                <img src="images/pngtree-red-classic-car.png" alt="Classic Model Car" class="img-fluid">
            </div>
        </div>
    </div>
</section>

<!-- Product Section -->
<section class="container my-5">
    <div class="text-center mb-4">
        <button class="btn btn-outline-primary mx-2">Classic Cars</button>
        <button class="btn btn-outline-secondary mx-2">Vintage Models</button>
        <button class="btn btn-outline-secondary mx-2">Racing Cars</button>
    </div>

    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4">
        <!-- Product Card 1 -->
        <div class="col">
            <div class="card">
                <img src="images/0020529_1957-chevrolet-bel-air_620.png" class="card-img-top" alt="Model Car 1">
                <div class="card-body text-center">
                    <p class="text-muted small">Classic Collection</p>
                    <h5 class="card-title">1957 Chevrolet</h5>
                    <a href="#" class="btn btn-outline-primary btn-sm">Read more</a>
                </div>
            </div>
        </div>

        <!-- Repeat product cards following the same structure -->
        <div class="col">
            <div class="card">
                <img src="images/classic%20mustang.jpg" class="card-img-top" alt="Model Car 2">
                <div class="card-body text-center">
                    <p class="text-muted small">Vintage Collection</p>
                    <h5 class="card-title">Classic Mustang</h5>
                    <a href="#" class="btn btn-outline-primary btn-sm">Read more</a>
                </div>
            </div>
        </div>
        <!-- Repeat product cards following the same structure -->
        <div class="col">
            <div class="card">
                <img src="images/Volvo.webp" class="card-img-top" alt="Model Car 2">
                <div class="card-body text-center">
                    <p class="text-muted small">Vintage Collection</p>
                    <h5 class="card-title">Classic Mustang</h5>
                    <a href="#" class="btn btn-outline-primary btn-sm">Read more</a>
                </div>
            </div>
        </div>
        <!-- Repeat product cards following the same structure -->
        <div class="col">
            <div class="card">
                <img src="images/bmw.webp" class="card-img-top" alt="Model Car 2">
                <div class="card-body text-center">
                    <p class="text-muted small">Vintage Collection</p>
                    <h5 class="card-title">Classic Mustang</h5>
                    <a href="#" class="btn btn-outline-primary btn-sm">Read more</a>
                </div>
            </div>
        </div>
        <!-- Add more product cards -->
    </div>
</section>

<!-- Shop By Scale Section -->
<section class="container my-5">
    <div class="text-center my-5">
        <h1 class="fw-bold">Shop By <span style="color: var(--accent-color);">Scale</span></h1>

        <div class="row mt-4 justify-content-center">
            <div class="col-md-2 col-6 mb-4">
                <div class="circle-container">
                    <img src="images/935298_alt6a.webp" alt="1:18 Scale" class="circle-img img-fluid">
                </div>
                <p class="mt-2">1:18 Scale</p>
            </div>
            <div class="col-md-2 col-6 mb-4">
                <div class="circle-container">
                    <img src="images/JAD30322-1__33132.jpg" alt="1:24 Scale" class="circle-img img-fluid">
                </div>
                <p class="mt-2">1:24 Scale</p>
            </div>
            <!-- Additional scale options -->
        </div>
    </div>
</section>

<!-- Limited Period Offer Section -->
<section class="container my-5">
    <div class="row">
        <div class="col-md-6">
            <div class="limited-offer">
                <h1>Limited Period Offer</h1>
                <p class="fs-5">Buy 2 and get 30% off</p>
                <div class="timer d-flex justify-content-between">
                    <div class="time-box text-center">
                        <span class="d-block">00</span>
                        <small>Days</small>
                    </div>
                    <div class="time-box text-center">
                        <span class="d-block">00</span>
                        <small>Hours</small>
                    </div>
                    <div class="time-box text-center">
                        <span class="d-block">00</span>
                        <small>Minutes</small>
                    </div>
                    <div class="time-box text-center">
                        <span class="d-block">00</span>
                        <small>Seconds</small>
                    </div>
                </div>
                <a href="#" class="btn btn-primary mt-3">Shop Now</a>
            </div>
        </div>

        <div class="col-md-6 d-flex justify-content-center align-items-center">
            <img src="images/car.webp" alt="Model Car Offer" class="img-fluid">
        </div>
    </div>
</section>

<!-- Recommended Section -->
<section class="container my-5">
    <h2 class="text-center mb-4">Recommended For You</h2>
    <div class="row">
        <div class="col-6 col-md-2 text-center">
            <img src="images/vintage%20model.png" alt="Model Car 1" class="img-fluid mb-2">
            <p class="small text-muted">Classic Cars</p>
            <p class="fw-bold">Vintage Model</p>
            <p>$200.00</p>
            <button class="btn btn-primary btn-sm">Add to Cart</button>
        </div>


        </div>
    <div class="text-center mt-4">
        <button class="btn btn-outline-primary">View All</button>
    </div>
</section>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h5>Welcome</h5>
                <p>Discover our passion for model cars and collectible vehicles.</p>
            </div>
            <div class="col-md-3">
                <h5>More About Store</h5>
                <ul class="list-unstyled">
                    <li>Multiple Branches</li>
                    <li>Take Franchise</li>
                    <li>Scheduled Offers</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Key Links</h5>
                <ul class="list-unstyled">
                    <li>Order</li>
                    <li>Download</li>
                    <li>Address</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Contact Details</h5>
                <p>Ahangama,GAlle,SriLanka</p>
                <p>Contact: 0772032749</p>
                <p>Email: vihanapiyasiri2003@gmail.com</p>
            </div>
        </div>
        <div class="row mt-4 text-center">
            <p>&copy; Copyright | Model Car Paradise | Developed by ThemeHunk</p>
        </div>
    </div>
</footer>
<script>
    // Timer Logic
    const countdownDate = new Date("2025-01-31T23:59:59").getTime();
    const timer = setInterval(() => {
        const now = new Date().getTime();
        const distance = countdownDate - now;
        if (distance < 0) {
            clearInterval(timer);
            document.getElementById("timer").innerHTML = "Offer Expired!";
            return;
        }
        document.getElementById("days").innerText = Math.floor(distance / (1000 * 60 * 60 * 24));
        document.getElementById("hours").innerText = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        document.getElementById("minutes").innerText = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        document.getElementById("seconds").innerText = Math.floor((distance % (1000 * 60)) / 1000);
    }, 1000);
</script>

</body>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</html>