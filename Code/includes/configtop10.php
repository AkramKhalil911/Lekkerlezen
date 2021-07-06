<?php 

$host = 'localhost';
$password = '';
$username = 'root';
$dbname = 'lekkerLezenDB';


$conStr = "mysql:host=$host;dbname=$dbname";
$con = new PDO ($conStr, $username, $password);

?>