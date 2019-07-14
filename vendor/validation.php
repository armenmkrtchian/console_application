<?php

#-----Check arguments

function checkingArgs($conn,$argv){

   if($argv[2] === 'export' && isset($argv[1]) === false){
        die("ERROR: Please write option export or import.\n");
   }
   if ($argv[2] === 'export' && isset($argv[2]) === false) {
       die("ERROR: Database name is missing!\n");
   }
    if ($argv[2] === 'export' && mysqli_query($conn, "USE $argv[2]") === false) {
        die("ERROR: Could not able to USE $argv[2]".mysqli_error($conn)."\n");
    }
};

#-----Check export or import

function expOrImp($argv,$conn){
    if (strtolower($argv[1]) === "export") {
        require 'export/export.php';
        export($conn);
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

    if ((isset($argv[4])) || (isset($argv[3]) && $argv[3] !== "*" && strpos($argv[3], '.') !== false)) {

        $fileName = isset($argv[4]) ? $argv[4] : $argv[3];

        #-----Check if filename has right sql file extension ends with ".sql"

        $validFileName = preg_match('/[\w].sql$/', $fileName);
        if ($validFileName !== 1) {
            die("ERROR: Wrong file extension!");
        }
    }else {

        $fileName = "my-dump-" . date('Y\-m\-d\-H:i:s').".sql";
    }
    return $fileName;
}


