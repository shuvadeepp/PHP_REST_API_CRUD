<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: PUT');
header('Access-Control-Allow-headers: Access-Control-Allow-headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

$data = json_decode(file_get_contents("php://input"), true);
// print_r($data);exit;
$person_id          = $data['person_id']; 
$person_name        = $data['person_name']; 
$person_phone       = $data['person_phone']; 
$person_email       = $data['person_email']; 
$person_country     = $data['person_country']; 

include "config.php";

$sql = "UPDATE db_api_crud SET name = '{$person_name}', phone = '{$person_phone}', email = '{$person_email}', country = '{$person_country}' WHERE id = '{$person_id}'";
$result = mysqli_query($conn, $sql) or die("SQL Query Failed!!!");
if ($result) {
    echo json_encode(array('message' => 'Updated', 'status' => true));
} else {
    echo json_encode(array('message' => 'Invalid', 'status' => false));
}
