<?php
session_start();

// Connect to database (replace dbname, username, password with actual credentials)
require_once "databaseconnection.php";

if (isset($_GET['query'])) {
    $searchTerm = $_GET['query'];
    $output = "";

    $queries = [
        'student' => "SELECT student_id, name, email FROM student WHERE student_id LIKE '%$searchTerm%'",
        'room' => "SELECT room_id,room_number, capacity, type, rent, facilities FROM room WHERE room_id LIKE '%$searchTerm%'",
        'admin' => "SELECT admin_id,username, role, email, password, phone_number, bank_id FROM admin WHERE admin_id LIKE '%$searchTerm%'",
        'bank' => "SELECT bank_id,name, address, contact_number, account_number FROM bank WHERE bank_id LIKE '%$searchTerm%'",
        'hostel_manager' => "SELECT hostel_manager_id,name, role, email, password, phone_number, bank_id FROM hostel_manager WHERE hostel_manager_id LIKE '%$searchTerm%'",
        'maintenancestaff' => "SELECT StaffID,Name, ContactNumber, Specialization, WorkSchedule, DateOfEmployment, EmergencyContact FROM maintenancestaff WHERE StaffID LIKE '%$searchTerm%'"
    ];

    echo "<h2><u>Search Results:</u></h2>";

    foreach ($queries as $table => $sql) {
        $stmt = $connection->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();

        $output .= "<h3>Table of $table:</h3>";
        
        if ($result) {
            if ($result->num_rows > 0) {
                $output .= "<ul>";
                while ($row = $result->fetch_assoc()) {
                    $output .= "<li>";
                    foreach ($row as $key => $value) {
                        $output .= "$key: $value, ";
                    }
                    $output .= "</li>";
                }
                $output .= "</ul>";
            } else {
                $output .= "<p>No results found in $table matching the search term: '$searchTerm'</p>";
            }
        } else {
            $output .= "<p>Error executing query: " . $connection->error . "</p>";
        }
    }

    echo $output;

    $connection->close();
} else {
    echo "<p>No search term was provided.</p>";
}
?>
