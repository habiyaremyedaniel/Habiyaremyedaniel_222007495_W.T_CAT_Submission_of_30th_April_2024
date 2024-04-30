<?php
//habiyaremye daniel 222007495 april 2024
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = ""; //this is empty because I didn't set any password
$dbname = "habiyaremye_daniel_hms";

// Create database connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check database connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM maintenancestaff";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<title>The Information about maintenancestaff</title>";
    echo "<h1>The Information about maintenancestaff</h1>";
    echo "<table border='1'>
            <tr>
            <th>Name</th>
            <th>Contact Number</th>
            <th>Specialization</th>
            <th>Work Schedule</th>
            <th>Date Of Employment</th>
            <th>Emergency Contact</th>
        </tr>";

    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["Name"] . "</td>";
        echo "<td>" . $row["ContactNumber"] . "</td>";
        echo "<td>" . $row["Specialization"] . "</td>";
        echo "<td>" . $row["WorkSchedule"] . "</td>";
        echo "<td>" . $row["DateOfEmployment"] . "</td>";
        echo "<td>" . $row["EmergencyContact"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No information found";
}

// Close the database connection
$conn->close();
?>
