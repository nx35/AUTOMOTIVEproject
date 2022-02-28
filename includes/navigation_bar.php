<?php

$active_home = "";
$active_cars = "";
$active_services = "";
$active_contact = "";
$active_login  = "";
$active_dashboard = "";

switch ($_SERVER["REQUEST_URI"]) {
      case '/index.php':
            $active_home="class=\"active\"";
            break;
      case '/contact.php':
      $active_contact="class=\"active\"";
            break;
      case '/services.php':
      $active_services="class=\"active\"";
            break;
      case '/cars.php':
            $active_cars="class=\"active\"";
            break;
      case '/dashboard.php':
            $active_dashboard="class=\"active\"";
            break;  
}
$dashboard="";
if ($this->privileges == 0) {
      $dashboard = "<li><a $active_dashboard href=\"dashboard.php\">DASHBOARD</a></li>";
}
echo "$dashboard
      <li><a $active_home href=\"index.php\">HOME</a></li>
      <li><a $active_cars href=\"cars.php\">CARS</a></li>
      <li><a $active_services href=\"services.php\">SERVICES</a></li>
      <li><a $active_contact href=\"contact.php\">CONTACT</a></li>
      <li><a $active_login href=\"login.php\">LOG IN</a><i class=\"far fa-user user\"></i></li>";
?>