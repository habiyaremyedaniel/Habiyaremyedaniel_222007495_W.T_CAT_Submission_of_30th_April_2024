<?php
session_start();
//<!--Habiyaremye daniel 2220007495--->
// Connect to database (replace dbname, username, password with actual credentials)
require_once "databaseconnection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create'])) {
    $room_number = $_POST['room_number'];
        $capacity = $_POST['capacity'];
        $type = $_POST['type'];
        $rent = $_POST['rent'];
        $facilities = $_POST['facilities'];

        $sql = "INSERT INTO room (room_number, capacity, type, rent, facilities) VALUES (?, ?, ?, ?, ?)";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("sssss", $room_number, $capacity, $type, $rent, $facilities);


    if ($stmt->execute()) {
        echo "Record added successfully.";
    } else {
        echo "Error adding record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
 $id = $_POST['id'];
        $newroom_number = $_POST['newroom_number'];
        $newcapacity = $_POST['newcapacity'];
        $newtype = $_POST['newtype'];
        $newrent = $_POST['newrent'];
        $newfacilities = $_POST['newfacilities'];

        $sql = "UPDATE room SET room_number=?, capacity=?, type=?, rent=?, facilities=? WHERE room_id=?";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("sssssi", $newroom_number, $newcapacity, $newtype, $newrent, $newfacilities, $id);

    if ($stmt->execute()) {
        echo "Record updated successfully.";
    } else {
        echo "Error updating record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete'])) {
    $id = $_POST['room_id'];

    $sql = "DELETE FROM room WHERE room_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting record: " . $stmt->error;
    }
}
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['read'])) {
    // Assuming the session contains room_id
    $id = $_POST['room_id'];

    // Select user_room's information from the database
    $sql = "SELECT * FROM room WHERE room_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch and display user_room information
        $row = $result->fetch_assoc();
        echo "room_id: " . $row["room_id"] . "<br>";
        echo "room_number: " . $row["room_number"] . "<br>";
    echo "capacity: " . $row["capacity"] . "<br>";
    echo "type: " . $row["type"] . "<br>";
    echo "rent: " . $row["rent"] . "<br>";
    echo "facilities: ".$row["facilities"] . "<br>";
    } else {
        echo "No user found with the provided ID.";
    }
}


?>