<?php


function checkArgsQuantity($argc) {

    if ($argc < 3) {
        die("The arguments not enough!");
    }
}
//Checks $argv
function checks($argv) {
    $link = mysqli_connect(
        "localhost",
        "root",
        "55555",
        "classicmodels"
    );

    if ($argv[3] !== '*' || isset($argv[3]) !== false) {
        die("ERROR: Could not able to execute SHOW TABLES " . mysqli_error($link) . "\n");
    } else {
        require 'export/export.php';
    }
};

$dbName = $argv[2];
$useSql = mysqli_query($link, "USE $dbName;");
$showSql = mysqli_query($link, "SHOW TABLES;");

if ($useSql === false) {
    die("ERROR: Could not able to execute USE $dbName " . mysqli_error($link) . "\n");
}