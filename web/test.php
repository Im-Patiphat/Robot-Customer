<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container h1 {
            text-align: center;
            font-size:30px;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Form Submission Result</h1>
        
        <?php
        // Check if form is submitted
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Retrieve data from $_POST
            $firstname = $_POST["firstname"];
            $lastname = $_POST["lastname"];
            $age = $_POST["age"];

            // Display the submitted data
            echo "<p id='firstname'><strong>First Name:</strong>$firstname</p>";
            echo "<p><strong>Last Name:</strong>$lastname</p>";
            echo "<p><strong>Age:</strong>$age</p>";
        } else {
            // If form is not submitted, show a message
            echo "<p>No data submitted.</p>";
        }
        ?>
    </div>
</body>
</html>
