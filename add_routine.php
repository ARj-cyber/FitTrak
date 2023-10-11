<?php
$servername = "localhost";
$username = "username"; // Replace with your database username
$password = "password"; // Replace with your database password
$database = "fitness_db"; // Replace with your database name

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$routineName = $_POST['routineName'];
$exercise = $_POST['exercise'];
$sets = $_POST['sets'];
$weight = $_POST['weight'];
$time = $_POST['time'];

$sql = "INSERT INTO routine (routine_name, exercise_id, sets, weight, time) VALUES ('$routineName', '$exercise', '$sets', '$weight', '$time')";

if ($conn->query($sql) === TRUE) {
    echo "New routine added successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
