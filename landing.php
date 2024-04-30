<?php
session_start();
//--Habiyaremye daniel 2220007495--->

// Connect to database (replace dbname, username, password with actual credentials)
require_once "databaseconnection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $phone_number = $_POST['phone_number'];
    $role = $_POST['role'];
    $bank_id = $_POST['bank_id'];

    $sql = "INSERT INTO admin (username, role, email, password, phone_number, bank_id) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("ssssss", $username, $role, $email, $password, $phone_number, $bank_id);

    if ($stmt->execute()) {
        echo "Record added successfully.";
        header("Location:index.html");
    } else {
        echo "Error adding record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
    $id = $_POST['admin_id'];
    $newusername = $_POST['newusername'];
    $newemail = $_POST['newemail'];
    $newpassword = $_POST['newpassword'];
    $newphone_number = $_POST['newphone_number'];
    $newrole = $_POST['newrole'];
    $newbank_id = $_POST['newbank_id'];

    $sql = "UPDATE admin SET username=?, role=?, email=?, password=?, phone_number=?, bank_id=? WHERE admin_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("ssssssi", $usernewusername, $newrole, $newemail, $newpassword, $newphone_number, $newbank_id, $id);

    if ($stmt->execute()) {
        echo "Record updated successfully.";
    } else {
        echo "Error updating record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete'])) {
    $id = $_POST['admin_id'];

    $sql = "DELETE FROM admin WHERE admin_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting record: " . $stmt->error;
    }
}
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['read'])) {
    // Assuming the session contains admin_id
    $id = $_POST['admin_id'];

    // Select user_admin's information from the database
    $sql = "SELECT * FROM admin WHERE admin_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch and display user_admin information
        $row = $result->fetch_assoc();
        echo "admin_id: " . $row["admin_id"] . "<br>";
        echo "username: " . $row["username"] . "<br>";
        echo "Email: " . $row["email"] . "<br>";
        echo ":password " . $row["password"] . "<br>";
        echo "phone_number: " . $row["phone_number"] . "<br>";
         echo "Role: " . $row["role"] . "<br>";
        echo "Bank ID: " . $row["bank_id"] . "<br>";
    } else {
        echo "No user found with the provided ID.";
    }
}


?>