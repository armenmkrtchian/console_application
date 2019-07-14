<?php

#--------Connect

$server = "localhost";
$username = "root";
$password = "55555";
$database = "classicmodels";

$conn = mysqli_connect($server,$username,$password,$database);

if ($conn === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
echo "Connect Successfully.Host info: " . mysqli_get_host_info($conn) . "\n";


#-----Checking arguments validation

require 'vendor/validation.php';

checkingArgs($conn,$argv);

checkTableName($conn,$argv);

expOrImp($argv,$conn);

validFilename($argv);


