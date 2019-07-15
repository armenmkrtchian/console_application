<?php


#-----Check arguments

function checkingArgs($conn,$argv){

   if(!isset($argv[1])){
        die("ERROR: Please write option export or import.\n");
   }
   if (($argv[1] === ('export' || 'import')) && !isset($argv[2])) {
       die("ERROR: Database name is missing!\n");
   }
    if (mysqli_query($conn, "USE $argv[2]") === false) {
        die("ERROR: Could not able to USE $argv[2] \n".mysqli_error($conn)."\n");
    }
    if($argv[1] === 'import' && isset($argv[3]) === false) {
        die("ERROR: Please write database name and file name in this order: db_name file_name.sql\n");
    }
};

#-----Check export or import

function expOrImp($argv,$conn){
    if (strtolower($argv[1]) === "export") {
        require 'export/export.php';
        export($conn,$argv);
    }
    if (strtolower($argv[1]) === "import") {
        require 'import/import.php';
        import($conn,$argv);
    }
};


#-----Check tables $argv[3] (* or nothing)

function checkTableName($conn, $argv){
    Global $tableName;
    Global $tables;

    if (isset($argv[3])) {
        $tableName = $argv[3];
    } else {
        $tableName = '*';
    }

    $tableName = isset($argv[3]) ? $argv[3] : '*';

    $is_filename = isset($argv[3]) && pathinfo($argv[3], PATHINFO_EXTENSION) === 'sql';

    if (!isset($argv[3]) || $argv[3] === '*' || $is_filename) {
        if (mysqli_query($conn, "SHOW TABLES")) {
            $tables = [];
        } else {
            // error
        }
    } else {
        $tables = explode(',', $argv[3]);
    }

}

#-----Check if fileName is specified

function validFilename($argv){

    $is_filename = isset($argv[3]) && pathinfo($argv[3], PATHINFO_EXTENSION) === 'sql';

    if (isset($argv[3]) === false || $argv[3] === "*" && isset($argv[4]) === false) {
        $dateCurrent = date('Y\-m\-d\-H:i:s');
        $fileNameDataCurrent = "dump-file-$dateCurrent.sql";
        $chosenFilename = $fileNameDataCurrent;



//        $fileName = isset($argv[4]) ? $argv[4] : $argv[3];
//
//        #-----Check if filename has right sql file extension ends with ".sql"
//
//        $validFileName = preg_match('/[\w].sql$/', $fileName);
//        if ($validFileName !== 1) {
//            die("ERROR: Wrong file extension!");
//        }
    }else{
        $chosenFilename = isset($argv[4]) ? $argv[4] : $argv[3];
    }
return $chosenFilename;
}


