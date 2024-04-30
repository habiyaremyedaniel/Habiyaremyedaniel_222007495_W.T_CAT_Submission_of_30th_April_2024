<?php
session_start();
//<!--Habiyaremye daniel 2220007495--->

// Connect to database (replace dbname, username, password with actual credentials)
require_once "databaseconnection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create'])) {
    $name = $_POST['name'];
        $address = $_POST['address'];
        $contact_number = $_POST['contact_number'];
        $account_number = $_POST['account_number'];
        

    $sql = "INSERT INTO bank (name, address, contact_number, account_number) VALUES ( ?, ?, ?, ?)";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("ssss", $name, $address, $contact_number, $account_number);

    if ($stmt->execute()) {
        echo "Record added successfully.";
    } else {
        echo "Error adding record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
   $id = $_POST['id'];
        $newname = $_POST['newname'];
        $newaddress = $_POST['newaddress'];
        $newcontact_number = $_POST['newcontact_number'];
        $newaccount_number = $_POST['newaccount_number'];
       

        $sql = "UPDATE bank SET name=?, address=?, contact_number=?, account_number=? WHERE bank_id=?";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("ssssssi", $newname, $newaddress, $newcontact_number, $newaccount_number, $id);

    if ($stmt->execute()) {
        echo "Record updated successfully.";
    } else {
        echo "Error updating record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete'])) {
    $id = $_POST['bank_id'];

    $sql = "DELETE FROM bank WHERE bank_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting record: " . $stmt->error;
    }
}
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['read'])) {
    // Assuming the session contains bank_id
    $id = $_POST['bank_id'];

    // Select user_bank's information from the database
    $sql = "SELECT * FROM bank WHERE bank_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch and display user_bank information
        $row = $result->fetch_assoc();
        echo "bank_id: " . $row["bank_id"] . "<br>";
        echo "Name: " . $row["name"] . "<br>";
        echo "address: " . $row["address"] . "<br>";
        echo "contact_number: " . $row["contact_number"] . "<br>";
         echo "account_number: " . $row["account_number"] . "<br>";
        echo "Bank ID: " . $row["bank_id"] . "<br>";
    } else {
        echo "No user found with the provided ID.";
    }
}


?>