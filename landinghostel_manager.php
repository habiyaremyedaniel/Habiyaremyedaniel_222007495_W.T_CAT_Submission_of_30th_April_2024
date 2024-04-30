<?php
session_start();
//--Habiyaremye daniel 2220007495--->

// Connect to database (replace dbname, username, password with actual credentials)
require_once "databaseconnection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $phone_number = $_POST['phone_number'];
    $role = $_POST['role'];
    $bank_id = $_POST['bank_id'];

    $sql = "INSERT INTO hostel_manager (name, role, email, password, phone_number, bank_id) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("ssssss", $name, $role, $email, $password, $phone_number, $bank_id);

    if ($stmt->execute()) {
        echo "Record added successfully.";
    } else {
        echo "Error adding record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
    $id = $_POST['hostel_manager_id'];
    $newname = $_POST['newname'];
    $newemail = $_POST['newemail'];
    $newpassword = password_hash($_POST['newpassword'], PASSWORD_DEFAULT);
    $newphone_number = $_POST['newphone_number'];
    $newrole = $_POST['newrole'];
    $newbank_id = $_POST['newbank_id'];

    $sql = "UPDATE hostel_manager SET name=?, role=?, email=?, password=?, phone_number=?, bank_id=? WHERE hostel_manager_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("ssssssi", $newname, $newrole, $newemail, $newpassword, $newphone_number, $newbank_id, $id);

    if ($stmt->execute()) {
        echo "Record updated successfully.";
    } else {
        echo "Error updating record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete'])) {
    $id = $_POST['hostel_manager_id'];

    $sql = "DELETE FROM hostel_manager WHERE hostel_manager_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting record: " . $stmt->error;
    }
}
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['read'])) {
    // Assuming the session contains hostel_manager_id
    $id = $_POST['hostel_manager_id'];

    // Select user_hostel_manager's information from the database
    $sql = "SELECT * FROM hostel_manager WHERE hostel_manager_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch and display user_hostel_manager information
        $row = $result->fetch_assoc();
        echo "hostel_manager_id: " . $row["hostel_manager_id"] . "<br>";
        echo "Name: " . $row["name"] . "<br>";
        echo "Email: " . $row["email"] . "<br>";
        echo "phone_number: " . $row["phone_number"] . "<br>";
         echo "Role: " . $row["role"] . "<br>";
        echo "Bank ID: " . $row["bank_id"] . "<br>";
    } else {
        echo "No user found with the provided ID.";
    }
}


?>