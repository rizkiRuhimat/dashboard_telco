<?php
$user  =  'username';
$pwd  =  'password';
$host  =  '127.0.0.1';
$dbname  =  'test';

$conn  =  new mysqli($user,$pwd,$host,$dbname);

if ($conn -> error_no){
echo "Failed to Connect MYSQL :" . $conn->connect_error;
exit();
}
