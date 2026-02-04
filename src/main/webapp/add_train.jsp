<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Train</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Add New Train</h2>
    <form action="AddTrainServlet" method="post" class="row g-3">
        <div class="col-md-4">
            <label for="trainNo" class="form-label">Train No</label>
            <input type="text" class="form-control" id="trainNo" name="train_no" required>
        </div>
        <div class="col-md-8">
            <label for="trainName" class="form-label">Train Name</label>
            <input type="text" class="form-control" id="trainName" name="train_name" required>
        </div>
        <div class="col-md-6">
            <label for="fromStation" class="form-label">From</label>
            <input type="text" class="form-control" id="fromStation" name="from_station" required>
        </div>
        <div class="col-md-6">
            <label for="toStation" class="form-label">To</label>
            <input type="text" class="form-control" id="toStation" name="to_station" required>
        </div>
        <div class="col-md-6">
            <label for="departure" class="form-label">Departure Time</label>
            <input type="time" class="form-control" id="departure" name="departure_time" required>
        </div>
        <div class="col-md-6">
            <label for="arrival" class="form-label">Arrival Time</label>
            <input type="time" class="form-control" id="arrival" name="arrival_time" required>
        </div>
        <div class="col-md-4">
            <label for="fare" class="form-label">Fare (₹)</label>
            <input type="number" class="form-control" id="fare" name="fare" step="0.01" min="0" required>
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-primary">Add Train</button>
            <a href="view_trains.jsp" class="btn btn-secondary">Back</a>
        </div>
    </form>
</div>
</body>
</html>
