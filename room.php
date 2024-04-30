<?php
//habiyaremye daniel 222007495 april 2024
                // Database connection parameters
                $servername = "localhost";
                $username = "root";
                $password = "";//this is empty because I din't set any password
                $dbname = "habiyaremye_daniel_hms";


                // Create database connection
                $conn = new mysqli($servername, $username, $password, $dbname);

                // Check database connection
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

$sql = "SELECT * FROM room";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<title>The Information about room</title>";
    echo "<h1>The Information about room</h1>";
    echo "<table border='1'>
            <tr>
            <th>room_id</th>
            <th>Room Number</th>
            <th>Capacity</th>
            <th>Type</th>
            <th>Rent</th>
            <th>Facilities</th>
            </tr>";

     //habiyaremye daniel 222007495 april 2024

    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["room_id"] . "</td>";
       echo "<td> " . $row["room_number"] . "</td>";
    echo "<td>" . $row["capacity"] . "</td>";
    echo "<td> " . $row["type"] . "</td>";
    echo "<td> " . $row["rent"] . "</td>";
    echo "<td> ".$row["facilities"] . "</td>";
       
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "no information found";
}

//habiyaremye daniel 222007495 april 2024

$conn->close();
?>
