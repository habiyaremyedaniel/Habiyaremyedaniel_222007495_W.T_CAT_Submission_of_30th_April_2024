<?php
session_start(); //<!--Habiyaremye daniel 2220007495--->

// Connect to database (replace dbname, username, password with actual credentials)
require_once "databaseconnection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create'])) {
     $name = $_POST['Name'];
        $contactNumber = $_POST['ContactNumber'];
        $specialization = $_POST['Specialization'];
        $workSchedule = $_POST['WorkSchedule'];
        $dateOfEmployment = $_POST['DateOfEmployment'];
        $emergencyContact = $_POST['EmergencyContact'];

        $sql = "INSERT INTO maintenancestaff (Name, ContactNumber, Specialization, WorkSchedule, DateOfEmployment, EmergencyContact) VALUES (?, ?, ?, ?, ?, ?)";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("ssssss", $name, $contactNumber, $specialization, $workSchedule, $dateOfEmployment, $emergencyContact);

    if ($stmt->execute()) {
        echo "Record added successfully.";
    } else {
        echo "Error adding record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
    $id = $_POST['StaffID'];
   $newName = $_POST['newName'];
        $newContactNumber = $_POST['newContactNumber'];
        $newSpecialization = $_POST['newSpecialization'];
        $newWorkSchedule = $_POST['newWorkSchedule'];
        $newDateOfEmployment = $_POST['newDateOfEmployment'];
        $newEmergencyContact = $_POST['newEmergencyContact'];

        $sql = "UPDATE maintenancestaff SET Name=?, ContactNumber=?, Specialization=?, WorkSchedule=?, DateOfEmployment=?, EmergencyContact=? WHERE StaffID=?";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("ssssssi", $newName, $newContactNumber, $newSpecialization, $newWorkSchedule, $newDateOfEmployment, $newEmergencyContact, $id);


    if ($stmt->execute()) {
        echo "Record updated successfully.";
    } else {
        echo "Error updating record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete'])) {
    $id = $_POST['StaffID'];

    $sql = "DELETE FROM maintenancestaff WHERE StaffID=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting record: " . $stmt->error;
    }
}
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['read'])) {
    // Assuming the session contains StaffID
    $id = $_POST['StaffID'];

    // Select user_maintenancestaff's information from the database
    $sql = "SELECT * FROM maintenancestaff WHERE StaffID=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch and display user_maintenancestaff information
        $row = $result->fetch_assoc();
        echo "StaffID: " . $row["StaffID"] . "<br>";
         echo "Name: " . $row["Name"] . "<br>";
        echo "ContactNumber: " . $row["ContactNumber"] . "<br>";
        echo "Specialization: " . $row["Specialization"] . "<br>";
        echo "WorkSchedule: " . $row["WorkSchedule"] . "<br>";
        echo "DateOfEmployment: " . $row["DateOfEmployment"] . "<br>";
        echo "EmergencyContact: " . $row["EmergencyContact"] . "<br>";
       
    } else {
        echo "No user found with the provided ID.";
    }
}


?>