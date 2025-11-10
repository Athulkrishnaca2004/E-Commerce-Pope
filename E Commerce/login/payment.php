<?php

$servername = "localhost";  
$username = "root";         
$password = "";             
$dbname = "table";        


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form values and sanitize them
    $bankName = mysqli_real_escape_string($conn, $_POST["bankName"]);
    $cardNumber = mysqli_real_escape_string($conn, $_POST["cardNumber"]);
    $expiryDate = mysqli_real_escape_string($conn, $_POST["expiryDate"]);
    $cvv = mysqli_real_escape_string($conn, $_POST["cvv"]);
    $upi = mysqli_real_escape_string($conn, $_POST["upi"]);
    $mobileNumber = mysqli_real_escape_string($conn, $_POST["mobileNumber"]);
    $otp = mysqli_real_escape_string($conn, $_POST["otp"]);

    // SQL query to insert data into payments table
    $sql = "INSERT INTO payments (bankName, cardNumber, expiryDate, cvv, upi, mobileNumber, otp)
            VALUES ('$bankName', '$cardNumber', '$expiryDate', '$cvv', '$upi', '$mobileNumber', '$otp')";

    if ($conn->query($sql) === TRUE) {
        echo "<h1>Order Placed</h1>";
        echo "<p>Your order has been successfully placed.</p>";
        header("Location: ../orderplaced.html");
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "Invalid request method.";
}

// Close connection
$conn->close();
?>
