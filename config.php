<?php
$host = "localhost";
$dbuser = "root";
$dbpwd = "";
$dbname = "test";

$conn = mysqli_connect($host, $dbuser, $dbpwd, $dbname) or die("Demo Connection failed: " . mysqli_connect_error());
if ($conn->connect_error) { 
    echo "Demo Connection failed"; 
}
$siteurl = "http://localhost/allframes";

?>