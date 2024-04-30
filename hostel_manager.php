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

$sql = "SELECT * FROM hostel_manager";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<title>The Information about hostel_manager</title>";
    echo "<h1>The Information about hostel_manager</h1>";
    echo "<table border='1'>
            <tr>
                <th>hostel_manager_id</th>
                <th>name</th>
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
        echo "<td>" . $row["hostel_manager_id"] . "</td>";
        echo "<td>" . $row["name"] . "</td>";
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
