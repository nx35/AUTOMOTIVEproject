<?php

include "includes/preload.php";

if ($site->privileges > 0) {
  header("Location: index.php");
  exit();
}

$feedback = "";
$purchases = "";

try {
  $stmt = $conn->prepare("SELECT * from contact_form LIMIT 10");
  $stmt->execute();
  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  foreach($stmt as $contact_forms=>$contact_form) {
      $feedback .= "
      <tr id=\"alt\">
      <td>".$contact_form['id']."</td>
      <td>".$contact_form['name']."</td>
      <td>".$contact_form['email']."</td>
      <td>".$contact_form['subject']."</td>
      <td>".$contact_form['message']."</td>
      <td>".$contact_form['date_posted']."</td>

      </tr>";
  }
}
catch(PDOException $e) {
  echo "Error: " . $e->getMessage();
}

try {
  $stmt = $conn->prepare("SELECT purchases.id, users.name as 'user', cars.name as 'car', purchases.date_purchased from purchases left join users on users.id=purchases.user left join cars on cars.id=purchases.car");
  $stmt->execute();
  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  foreach($stmt as $key=>$val) {
      $purchases .= "
      <tr id=\"alt\">
      <td>".$val['id']."</td>
      <td>".$val['user']."</td>
      <td>".$val['car']."</td>
      <td>".$val['date_purchased']."</td>
      </tr>";
  }
}
catch(PDOException $e) {
  echo "Error: " . $e->getMessage();
}

$dynamic_content["feedback"]=$feedback;
$dynamic_content["purchases"]=$purchases;

$page = new page($static_content, $dynamic_content);

$site->setPage($page);

$site->render();