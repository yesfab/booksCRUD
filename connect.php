<?php

$username = "root";
$password = "root";

try {
    $dbh = new PDO('mysql:host=localhost;dbname=evalphp', $username, $password);
    
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}
?>