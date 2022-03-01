<?php
include "includes/preload.php";

$purchase_message = "";

if ($site->privileges>1) {
    header("Location: /login.php");
    exit();
}

$car_id = $_GET["id"];

try {
    $stmt = $conn->prepare("select id from users where name = '".$site->user."'");
    $stmt->execute();
  
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $user_id = $result["id"];
} 
catch(PDOException $e) {
    $purchase_message = "Error: " . $e->getMessage();
}

try {
    $stmt = $conn->prepare("INSERT INTO  purchases (`user`, `car`) VALUES ('".$user_id."','".$car_id."')");
    $stmt->execute();
  
    $purchase_message="Your Car Has been successfuly purchased! You will receive an invoice via email.";
} 
catch(PDOException $e) {
    $purchase_message = "Error: " . $e->getMessage();
}

$dynamic_content["purchase_message"] = $purchase_message;

$page = new page($static_content, $dynamic_content);

$site->setPage($page);

$site->render();