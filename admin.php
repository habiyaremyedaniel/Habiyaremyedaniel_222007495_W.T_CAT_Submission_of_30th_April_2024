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

$sql = "SELECT * FROM admin";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<title>The Information about admin</title>";
    echo "<h1>The Information about admin</h1>";
    echo "<table border='1'>
            <tr>
                <th>admin_id</th>
                <th>username</th>
                <th>email</th>
               <th>password</th>
                <th>phone_number</th>
                <th>role</th>
                <th>bank_id </th>
            </tr>";

     //habiyaremye daniel 222007495 april 2024

    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["admin_id"] . "</td>";
        echo "<td>" . $row["username"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["password"] . "</td>";
        echo "<td>" . $row["phone_number"] . "</td>";
        echo "<td>" . $row["role"] . "</td>";
        echo "<td>" . $row["bank_id"] . "</td>";
       
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "no information found";
}

//habiyaremye daniel 222007495 april 2024

$conn->close();
?>
