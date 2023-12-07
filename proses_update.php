<?php
$servername = "127.0.0.1";
$username = "galih";
$password = "galih123";
$dbname = "telco";

// koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// get ID
$id = $_GET['id'];

// validasi ID
if (!is_numeric($id)) {
    die("ID tidak valid");
}

// Formulir disubmit, proses update
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // get data dari form
    $operator = $_POST['operator'];
    $server = $_POST['server'];
    $status_err = $_POST['status_err'];
    $service = $_POST['service'];
    $vendor = $_POST['vendor'];
    $url = $_POST['url'];
    $fname = $_POST['fname'];

    // Query SQL untuk update
    $updateQuery = "UPDATE config_status_telco SET Operator=?, Server=?, status_err=?, Service=?, Vendor=?, URL=?, Fname=? WHERE ID=?";
    $updateStmt = $conn->prepare($updateQuery);
    $updateStmt->bind_param("sssssssi", $operator, $server, $status_err, $service, $vendor, $url, $fname, $id);

    // Jalanin query update
    if ($updateStmt->execute()) {
        echo "Data berhasil diperbarui. <a href='index.php'>Kembali ke Dashboard</a>";
    } else {
        echo "Error: " . $updateStmt->error;
    }

    // Tutup statement update
    $updateStmt->close();
}

$conn->close();
