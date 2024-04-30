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

$sql = "SELECT * FROM student";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<title>The Information about student</title>";
    echo "<h1>The Information about student</h1>";
    echo "<table border='1'>
            <tr>
            <th>student_id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Phone Number</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Course</th>
            <th>Year of Study</th>
            <th>Room Number</th>
            <th>Room ID</th>
            </tr>";

     //habiyaremye daniel 222007495 april 2024

    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["student_id"] . "</td>";
        echo "<td>" . $row["name"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["password"] . "</td>";
        echo "<td>" . $row["phone_number"] . "</td>";
        echo "<td>" . $row["gender"] . "</td>";
        echo "<td>" . $row["date_of_birth"] . "</td>";
         echo "<td>" . $row["course"] . "</td>";
        echo "<td>" . $row["year_of_study"] . "</td>";
        echo "<td>" . $row["room_number"] . "</td>";
        echo "<td>" . $row["bank_id"] . "</td>";
        echo "<td>" . $row["room_id"] . "</td>";
       
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "no information found";
}

//habiyaremye daniel 222007495 april 2024

$conn->close();
?>
