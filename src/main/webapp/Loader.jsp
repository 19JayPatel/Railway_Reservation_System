<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Safar Setu</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body, html {
      height: 100%;
      margin: 0;
      background: #f9fafb;
      font-family: 'Segoe UI', sans-serif;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }

    .train-track {
      width: 600px;
      height: 60px;
      position: relative;
      background: #dcdcdc33;
      border-radius: 5px;
      overflow: hidden;
      margin-bottom: 20px;
    }

    .train {
      position: absolute;
      top: 10px;
      left: 0;
    }

    .train img {
      width: 60px;
      height: auto;
    }

    .loader-container {
      width: 600px;
      height: 8px;
      background-color: #e0e0e0;
      border-radius: 10px;
      overflow: hidden;
      margin-bottom: 10px;
    }

    .loader-line {
      width: 0%;
      height: 100%;
      background-color: #2ecc71;
      transition: width 0.03s linear;
    }

    .percentage {
      font-size: 16px;
      font-weight: 500;
      color: #333;
    }

    .preloader {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
  </style>
</head>
<body>

  <!-- PRELOADER -->
  <div class="preloader" id="preloader">
    
    <!-- TRAIN TRACK & MOVING TRAIN -->
    <div class="train-track">
      <div class="train" id="train">
        <img src="images/train-cargo.png" alt="Train" />
      </div>
    </div>

    <!-- PROGRESS BAR -->
    <div class="loader-container">
      <div class="loader-line" id="loader"></div>
    </div>

    <!-- PERCENTAGE TEXT -->
    <div class="percentage" id="percentage">0%</div>
  </div>

  <script>
    const loader = document.getElementById('loader');
    const percentageText = document.getElementById('percentage');
    const train = document.getElementById('train');

    const trackWidth = 600;
    const trainWidth = 60;
    let percent = 0;
    let trainPos = 0;

    const loadInterval = setInterval(() => {
      if (percent <= 100) {
        loader.style.width = percent + '%';
        percentageText.textContent = percent + '%';

        // Move train from left to right
        trainPos = (trackWidth - trainWidth) * (percent / 100);
        train.style.left = trainPos + 'px';

        percent++;
      } else {
        clearInterval(loadInterval);
        // Redirect or add additional logic after load completes
        window.location.href = 'index.jsp';
      }
    }, 40);
  </script>

</body>
</html>
