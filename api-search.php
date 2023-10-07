<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

/* $data = json_decode(file_get_contents("php://input"), true);
$search_person_name = $data['search_person_name'];  */

$search_person_name = isset($_GET['search_person_name']) ? $_GET['search_person_name'] : die("Invalid search");

include "config.php";

$sql = "SELECT * FROM db_api_crud WHERE name LIKE '%{$search_person_name}%'";
$result = mysqli_query($conn, $sql) or die("SQL Query Failed!!!");
if (mysqli_num_rows($result) > 0) {
    $output = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($output);
} else {
    echo json_encode(array('message' => 'No Search Found', 'status' => false));
}
