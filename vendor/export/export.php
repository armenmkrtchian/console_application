<?php
/*
1) arajin case anum em ekac parametreri validacia
Use enq tali tesnenq ed db ka te che, ete chka asum em chka, ete ka db-in apa stugum em trvac tabln
ner@ kan te che, ete poxancac@ ka u havasar e * tablner@ vercnum es bolor@ ete havasar che astxanishi poxancac@
storaketnerov ktrtum es sarqum es array dranq es vercnum,(query es anum mysqlin), validacian ancav   sax tablner@
kar(ete * e poxancac dbic vercnum enq bolor tablner@ poxancum es iran) <<erb vor asuma es db structuren  export ara
nshanakuma sarqel IMPORT queriner@(CREATE TABLE)
....Use nes grum demic 2) foreachov frumes tablneri vra` hat hat amem meki hamar SHOW CREATE TABLE ekc result@ vorpes tox vercnumes  eli concatenacia
loopimej SHOW create tabli mej


*/



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

require 'validation.php';
checkArgsQuantity($argc);
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
