<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: DELETE');
header('Access-Control-Allow-headers: Access-Control-Allow-headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

$data = json_decode(file_get_contents("php://input"), true); 
$person_id = $data['person_id'];

include "config.php";

$sql = "DELETE FROM db_api_crud WHERE id = {$person_id}";
// echo $sql;exit;
$result = mysqli_query($conn, $sql) or die("SQL Query Failed!!!");
if ($result) {
    echo json_encode(array('message' => 'Deleted', 'status' => true));
} else {
    echo json_encode(array('message' => 'Invalid', 'status' => false));
}
