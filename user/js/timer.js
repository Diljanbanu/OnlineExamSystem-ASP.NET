< !DOCTYPE html >
    <html lang="en">
        <head>
            <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Exam Timer Demo</title>

                    <!-- Link external JavaScript file -->
                    <script src="exam-timer.js"></script>

                    <style>
                        body {
                            font - family: Arial, sans-serif;
                        background-color: #f6f6f6;
                        text-align: center;
                        padding-top: 100px;
        }
                        .timer-box {
                            font - size: 24px;
                        font-weight: bold;
                        color: red;
                        margin-bottom: 20px;
        }
                        .btn {
                            background - color: #007bff;
                        color: white;
                        border: none;
                        padding: 10px 25px;
                        border-radius: 5px;
                        cursor: pointer;
        }
                        .btn:hover {
                            background - color: #0056b3;
        }
                    </style>
                </head>
                <body>

                    <div class="timer-box">
                        Time Left: <span id="timerDisplay">00:00</span>
                    </div>

                    <!-- Simulated submit button -->
                    <button id="btnSubmit" class="btn" onclick="alert('Exam Submitted!')">Submit Exam</button>

                    <script>
        // Example: start countdown for 5 minutes
                        window.onload = function () {
            var duration = 5 * 60; // 5 minutes (change as needed)
                        startCountdown(duration, "btnSubmit");
        };
                    </script>

                </body>
            </html>
