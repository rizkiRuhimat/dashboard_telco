<?php
$servername = "127.0.0.1";
$username = "galih";
$password = "galih123";
$dbname = "telco";

// php koneksi DB
$conn = new mysqli($servername, $username, $password, $dbname);


// ambil data dari form
$operator = $_POST['operator'];
$server = $_POST['server'];
$status_err = $_POST['status_err'];
$service = $_POST['service'];
$vendor = $_POST['vendor'];
$url = $_POST['url'];
$fname = $_POST['fname'];

//query SQL tembak ke index.php
$query = "INSERT INTO config_status_telco (Operator, Server, status_err, service, Vendor, URL, Fname) VALUES ('$operator', '$server', '$status_err', '$service', '$vendor', '$url', '$fname')";

// validasi berhasil/tidak
if ($conn->query($query) === TRUE) {
    echo "Data berhasil disimpan.";
} else {
    echo "Error: " . $query . "<br>" . $conn->error;
}

echo '<br><a href="index.php">kembali ke Home</a>';

// Menutup koneksi
$conn->close();
