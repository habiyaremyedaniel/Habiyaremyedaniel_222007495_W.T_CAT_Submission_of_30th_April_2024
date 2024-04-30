<?php
session_start();
//<!--Habiyaremye daniel 2220007495--->

// Connect to database (replace dbname, username, password with actual credentials)
require_once "databaseconnection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $phone_number = $_POST['phone_number'];
    $gender = $_POST['gender'];
    $date_of_birth = $_POST['date_of_birth'];
    $course = $_POST['course'];
    $year_of_study = $_POST['year_of_study'];
    $room_number = $_POST['room_number'];
    $bank_id= $_POST['bank_id'];
    $room_id= $_POST['room_id'];

    $sql = "INSERT INTO student (name, email, password, phone_number, gender, date_of_birth, course, year_of_study, room_number, bank_id, room_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("sssssssssss", $name, $email, $password, $phone_number, $gender, $date_of_birth, $course, $year_of_study, $room_number, $bank_id, $room_id);

    if ($stmt->execute()) {
        echo "Record added successfully.";
    } else {
        echo "Error adding record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
    $id = $_POST['student_id'];
    $newname = $_POST['newname'];
    $newemail = $_POST['newemail'];
    $newpassword = $_POST['newpassword'];
    $newphone_number = $_POST['newphone_number'];
    $newgender = $_POST['newgender'];
    $newdate_of_birth = $_POST['newdate_of_birth'];
    $newcourse = $_POST['newcourse'];
    $newyear_of_study = $_POST['newyear_of_study'];
    $newroom_number = $_POST['newroom_number'];
    $newbank_id = $_POST['newbank_id'];
    $newroom_id = $_POST['newroom_id'];

    $sql = "UPDATE student SET name=?, email=?, password=?, phone_number=?, gender=?, date_of_birth=?, course=?, year_of_study=?, room_number=?, bank_id=?, room_id=? WHERE student_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("sssssssssssi", $newname, $newemail, $newpassword, $newphone_number, $newgender, $newdate_of_birth, $newcourse, $newyear_of_study, $newroom_number, $newbank_id, $newroom_id, $id);

    if ($stmt->execute()) {
        echo "Record updated successfully.";
    } else {
        echo "Error updating record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete'])) {
    $id = $_POST['student_id'];

    $sql = "DELETE FROM student WHERE student_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting record: " . $stmt->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['read'])) {
    // Assuming the session contains student_id
    $id = $_POST['student_id'];

    // Select user_student's information from the database
    $sql = "SELECT * FROM student WHERE student_id=?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch and display user_student information
        $row = $result->fetch_assoc();
        echo "<b>ID:</b>" . $row["student_id"] . "<br>";
        echo "Name:" . $row["name"] . "<br>";
        echo "Email" . $row["email"] . "<br>";
        echo "Password:" . $row["password"] . "<br>";
        echo "Phone Number:" . $row["phone_number"] . "<br>";
        echo "Gender:" . $row["gender"] . "<br>";
        echo "Date of Birth:" . $row["date_of_birth"] . "<br>";
        echo "Course:" . $row["course"] . "<br>";
        echo "Year of Study:" . $row["year_of_study"] . "<br>";
        echo "Room Number:" . $row["room_number"] . "<br>";
        echo "Bank ID:" . $row["bank_id"] . "<br>";
        echo "Room ID:" . $row["room_id"] . "<br>";
    } else {
        echo "No user found with the provided ID.";
    }
}
?>
