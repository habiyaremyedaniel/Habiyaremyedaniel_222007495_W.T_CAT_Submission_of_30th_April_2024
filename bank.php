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

$sql = "SELECT * FROM bank";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<title>The Information about bank</title>";
    echo "<h1>The Information about bank</h1>";
    echo "<table border='1'>
           <tr>
            <th>name</th>
            <th>address</th>
            <th>contact_number</th>
            <th>account_number</th>
        </tr>";

    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["name"] . "</td>";
        echo "<td>" . $row["address"] . "</td>";
        echo "<td>" . $row["contact_number"] . "</td>";
        echo "<td>" . $row["account_number"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "no information found";
}

$conn->close();
?>
