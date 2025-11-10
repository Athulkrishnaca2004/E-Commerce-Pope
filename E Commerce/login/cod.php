<?php
// Database configuration
$servername = "localhost";
$username = "root"; // replace with your database username
$password = ""; // replace with your database password
$dbname = "table"; // replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $address = $_POST['Address'];
    $emailAddress = $_POST['emailAddress'];
    $mobileNumber = $_POST['mobileNumber'];
    $otp = $_POST['otp'];

    // Validate form data (basic validation)
    if (empty($address) || empty($emailAddress) || empty($mobileNumber) || empty($otp)) {
        echo "All fields are required!";
        exit;
    }

    // Prepare SQL statement
    $stmt = $conn->prepare("INSERT INTO orders (address, email, mobile, otp) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $address, $emailAddress, $mobileNumber, $otp);

    // Execute the statement
    if ($stmt->execute()) {
        echo "Order placed successfully!";
        // Redirect to order placed page
        header("Location: ../orderplaced.html");
        exit;
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement
    $stmt->close();
}

// Close connection
$conn->close();
?>
