<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $fullName = $_POST['fullName'];
    $mobileNumber = $_POST['mobileNumber'];
    $emailAddress = $_POST['emailAddress'];
    $deliveryAddress = $_POST['deliveryAddress'];

    // Perform any necessary validation

    // Example: Save to a database (MySQL in this case)
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

    // Prepare SQL statement
    $stmt = $conn->prepare("INSERT INTO profiles (fullName, mobileNumber, emailAddress, deliveryAddress) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $fullName, $mobileNumber, $emailAddress, $deliveryAddress);

    // Execute the statement
    if ($stmt->execute()) {
        // Success message
        echo "Profile saved successfully.";
    } else {
        // Error message
        echo "Error: " . $stmt->error;
    }

    // Close statement and connection
    $stmt->close();
    $conn->close();
}
?>
