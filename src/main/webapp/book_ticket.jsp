<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book Ticket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container mt-5">
    <h2 class="text-center mb-4">Book a Ticket</h2>

    <p class="lead text-center" style="max-width:800px;margin:0 auto 18px; color:#33475b;">Enter passenger and travel details below to reserve your seats. You will receive an e-ticket confirmation after successful booking.</p>

    <form action="BookTicketServlet" method="post" class="row g-3">
        <div class="col-md-6">
            <label for="trainNo" class="form-label">Train Number</label>
            <input type="text" class="form-control" id="trainNo" name="train_no" required>
        </div>

        <div class="col-md-6">
            <label for="passengerName" class="form-label">Passenger Name</label>
            <input type="text" class="form-control" id="passengerName" name="passenger_name" required>
        </div>

        <div class="col-md-4">
            <label for="age" class="form-label">Age</label>
            <input type="number" class="form-control" id="age" name="age" required min="1">
        </div>

        <div class="col-md-4">
            <label for="gender" class="form-label">Gender</label>
            <select class="form-select" id="gender" name="gender" required>
                <option selected disabled>Choose...</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>

        <div class="col-md-4">
            <label for="travel_date" class="form-label">Travel Date</label>
            <input type="date" id="travel_date" name="travel_date" class="form-control" required>
        </div>

        <!-- New Seats Field -->
        <div class="col-md-4">
            <label for="seats" class="form-label">Seats</label>
            <input type="number" class="form-control" id="seats" name="seats" min="1" required>
        </div>

        <div class="col-12">
            <button type="submit" class="btn btn-primary">Confirm Booking</button>
            <a href="schedule.jsp" class="btn btn-secondary">Back to Schedule</a>
            <small class="d-block text-muted mt-2">Payments processed securely. Check your bookings under 'My Bookings'.</small>
        </div>
    </form>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>
