<?php

require 'vendor/validation.php';
checkArgsQuantity($argc);
checks($argv);


$link = mysqli_connect(
    "localhost",
    "root",
    "55555",
    "classicmodels"
);
if ($link === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
echo "Connect Successfully.Host info: " . mysqli_get_host_info($link) . "\n";

$argv;
$argc;

if ($argc < 3) {
    die("The arguments not enough!");
}
if (isset($argv[2]) === false) {
    die("Database name is missing!");
}

$dbName = $argv[2];
$useSql = mysqli_query($link, "USE $dbName");
$showSql = mysqli_query($link, "SHOW TABLES");

if ($useSql === false) {
    die("ERROR: Could not able to execute USE $dbName " . mysqli_error($link) . "\n");
}

#Check tables $argv[3]

if ($argv[3] === '*' || isset($argv[3]) === false) {
    if ($showSql) {
        #create table names array
        while ($tableName = mysqli_fetch_array($showSql, MYSQLI_BOTH)) {
            $tablesInArray[] = $tableName[0];
        }
    } else {
        die("ERROR: Could not able to execute SHOW TABLES " . mysqli_error($link) . "\n");
    }
} else {

//split the names of tables into array from passed comma separated argument

    $tablesInArray = explode(',', $argv[3]);
    for ($x = 0; $x < count($tablesInArray); $x++) {
        #check tables' names existence in DB

        $sqlQuery = "IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = '$dbName' AND  TABLE_NAME = '$tablesInArray[$x]'))";

        if (mysqli_fetch_array(mysqli_query($link, $sqlQuery), MYSQLI_BOTH)[0] > 0) {
            continue;
        } else {
            die("ERROR: table $tablesInArray[$x] does not exist in $dbName database \n");
        }
    }
}

//collect table structure info in one array
for ($x = 0; $x < count($tablesInArray); $x++) {
    $showCreateTable = mysqli_query($link, "SHOW CREATE TABLE $tablesInArray[$x]");
    $tableSchemaString = mysqli_fetch_array($showCreateTable, MYSQLI_BOTH)[1];
    $structureOfTable[] = $tableSchemaString;
}
