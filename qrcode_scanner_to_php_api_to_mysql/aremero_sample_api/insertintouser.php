<?php
// HEADER
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// INCLUDE THE REQUIRED PHP FILE, IN WHICH THE DATABASE AND THE CLASS FILE
include_once 'Database.php';
include_once 'User.php';

// INSTANTIATE THE DATABASE CONNECTION AND THE USER
$db = new Database();
$database = $db->databaseConnect();
$user = new User($database);

// GET THE 'USERNAME' VALUE FROM $_GET['username'], THEN PASS IT TO USER->USERNAME VARIABLE IN THE USER CLASS
$user->username = $_GET['username'];

// THIS IS WHERE INSERT USERNAME INTO DATABASE HAPPEN

// BELOW IS THE STATEMENT TO USE INSERTUSERNAME FUNCTION WITHIN USER CLASS
if ($user->insertUsername()) {

    // BELOW IS THE RESULT TO BE POSTED WHEN INSERT USERNAME SUCCESS
    $user_arr = array(
        "status" => true,
        "message" => "Username insertion successful.",
        "result_userid" => $user->userid,
        "result_username" => $user->username,
    );
} else {

    // BELOW IS THE RESULT TO BE POSTED WHEN INSERT USERNAME FAILED
    $user_arr = array(
        "status" => false,
        "message" => "Username insertion failed.",
    );
}
print_r(json_encode($user_arr));
