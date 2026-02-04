<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Railway Reservation System</title>

    <link rel="stylesheet" type="text/css" href="main.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>

<%@ include file="header.jsp" %>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <h1>Safar Setu — Reliable Train Bookings, Simplified</h1>
        <p>Plan journeys, compare schedules, and manage your bookings with a secure, easy-to-use interface. Whether you're commuting or traveling long distance, Safar Setu helps you get there with clarity and confidence.</p>
        <p class="hero-cta">
            <a href="book_ticket.jsp" class="btn-primary">Book a Ticket</a>
        </p>
    </div>
</section>

<!-- Services Section -->
<section class="features">
    <h2>Our Features</h2>

    <div class="feature-grid">
        <div class="feature-card">
            <i class="fas fa-ticket-alt feature-icon" aria-hidden="true"></i>
            <h3>Fast & Easy Booking</h3>
            <p>Find trains and secure your seat in three simple steps — search, select, and confirm.</p>
        </div>

        <div class="feature-card">
            <i class="fas fa-clock feature-icon" aria-hidden="true"></i>
            <h3>Accurate Schedules</h3>
            <p>Reliable timetable information and status updates to help you plan with certainty.</p>
        </div>

        <div class="feature-card">
            <i class="fas fa-lock feature-icon" aria-hidden="true"></i>
            <h3>Secure Payments</h3>
            <p>Encrypted payment processing and clear fare breakdowns for peace of mind.</p>
        </div>
    </div>
</section>

<!-- Informational Content -->
<section class="info-section">
    <div class="about-card info-container">
        <div class="about-illustration" aria-hidden="true">
            <img src="https://images.unsplash.com/photo-1535535112387-56ffe8db21ff?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhaW58ZW58MHx8MHx8fDA%3D" alt="Train travel" loading="lazy">
        </div>

        <div class="about-content">
            <h2>About Safar Setu</h2>
            <p><strong>Safar Setu</strong> is a user-focused train reservation service offering a streamlined booking experience, transparent fares, and reliable schedule information across major routes.</p>
            <p>Use the platform to search trains, manage your bookings, and access e-tickets quickly. We prioritize clear information and secure payments so you can travel with confidence.</p>
            <p><a href="book_ticket.jsp" class="btn-primary">Get Started</a></p>
        </div>
    </div>
</section>

<!-- Image Gallery / Highlights -->
<section class="gallery">
    <h2>Highlights</h2>
    <div class="gallery-grid">
        <div class="highlight"><i class="fas fa-route highlight-icon" aria-hidden="true"></i> Scenic routes across regions — discover beautiful journeys.</div>
        <div class="highlight"><i class="fas fa-train highlight-icon" aria-hidden="true"></i> Major stations and easy connectivity for seamless travel.</div>
        <div class="highlight"><i class="fas fa-chair highlight-icon" aria-hidden="true"></i> Comfortable travel options with clear fare breakdowns.</div>
        <div class="highlight"><i class="fas fa-ticket-alt highlight-icon" aria-hidden="true"></i> Quick ticketing and straightforward cancellation policies.</div>
    </div>
</section>

<!-- How It Works -->
<section class="how-it-works">
    <h2>How It Works?</h2>

    <div class="steps-container">
        <div class="step">
            <i class="fas fa-user-plus"></i>
            <h3>Step 1</h3>
            <p>Sign up and create an account.</p>
        </div>

        <div class="step">
            <i class="fas fa-train"></i>
            <h3>Step 2</h3>
            <p>Search and select your train.</p>
        </div>

        <div class="step">
            <i class="fas fa-credit-card"></i>
            <h3>Step 3</h3>
            <p>Make a secure payment.</p>
        </div>

        <div class="step">
            <i class="fas fa-check-circle"></i>
            <h3>Step 4</h3>
            <p>Receive your e-ticket instantly.</p>
        </div>
    </div>
</section>

<!-- Reviews -->
<section class="reviews">
    <h2>What Our Customers Say</h2>

    <div class="review-container">
        <div class="review">
            <p>"Booking tickets was super easy and quick! Highly recommended!"</p>
            <span>⭐⭐⭐⭐⭐</span>
        </div>

        <div class="review">
            <p>"Live train tracking helped me plan my journey better."</p>
            <span>⭐⭐⭐⭐</span>
        </div>

        <div class="review">
            <p>"Great service and secure payments. Will use again!"</p>
            <span>⭐⭐⭐⭐⭐</span>
        </div>
    </div>
</section>

<!-- Destinations -->
<section class="destinations">
    <h2>Popular Destinations</h2>
    <div class="destination-grid">
        <div class="destination-card">
            <img src="https://www.thehosteller.com/_next/image/?url=https%3A%2F%2Fstatic.thehosteller.com%2Fhostel%2Fimages%2Fimage.jpg%2Fimage-1735884840040.jpg&w=2048&q=75" alt="Mumbai skyline" loading="lazy">
            <div class="destination-overlay">
                <div>
                    <h3>Mumbai</h3>
                    <p>Coastal metropolis with vibrant nightlife and historic landmarks.</p>
                </div>
                <div>
                    <a href="schedule.jsp" class="btn-primary">Explore</a>
                </div>
            </div>
        </div>

        <div class="destination-card">
            <img src="https://cdn.britannica.com/37/189837-050-F0AF383E/New-Delhi-India-War-Memorial-arch-Sir.jpg" alt="Delhi Red Fort" loading="lazy">
            <div class="destination-overlay">
                <div>
                    <h3>Delhi</h3>
                    <p>Historic capital offering rich heritage sites and modern comforts.</p>
                </div>
                <div>
                    <a href="schedule.jsp" class="btn-primary">Explore</a>
                </div>
            </div>
        </div>

        <div class="destination-card">
            <img src="https://skyticket.com/guide/wp-content/uploads/2017/12/iStock-859109190-680x450.jpg" alt="Kolkata streets" loading="lazy">
            <div class="destination-overlay">
                <div>
                    <h3>Kolkata</h3>
                    <p>Cultural hub known for cuisine, festivals, and colonial architecture.</p>
                </div>
                <div>
                    <a href="schedule.jsp" class="btn-primary">Explore</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- News -->
<section class="news">
    <h2>Latest News &amp; Updates</h2>

    <div class="news-container">
        <div class="news-item">
            <h3>New Train Route Launched</h3>
            <p>New express route between Mumbai and Chennai.</p>
        </div>

        <div class="news-item">
            <h3>Discount Offers</h3>
            <p>Get 20% off on online bookings.</p>
        </div>

        <div class="news-item">
            <h3>Improved Safety</h3>
            <p>Upgraded sanitation and security measures.</p>
        </div>
    </div>
</section>

<!-- Contact -->
<section class="contact">
    <h2>Contact Us</h2>
    <p>If you have any queries, feel free to reach out.</p>
    <a href="contact.jsp" class="btn-secondary">Get in Touch</a>
</section>


</body>
</html>

<jsp:include page="footer.jsp" />
