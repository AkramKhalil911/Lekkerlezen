<?php 

$host = 'localhost';
$dbname = 'LekkerLezenDB';
$username = 'root';
$password = '';

try {
    $conStr = "mysql:host=$host;dbname=$dbname";
    $con = new PDO ($conStr, $username, $password);
} catch(PDOException $e) {
    $e = "Niet verbonden";
    echo $e;
}

?>