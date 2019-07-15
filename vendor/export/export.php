<?php
require_once ('vendor/connect.php');

function export($conn,$argv){

$tables = array();
$result = mysqli_query($conn,"SHOW TABLES");
while($row = mysqli_fetch_row($result)){
    $tables[] = $row[0];
}
$return = '';
foreach($tables as $table){
    $result = mysqli_query($conn,"SELECT * FROM ".$table);
    $num_fields = mysqli_num_fields($result);

    $return .= 'DROP TABLE '.$table.';';
    $row2 = mysqli_fetch_row(mysqli_query($conn,"SHOW CREATE TABLE ".$table));
    $return .= "\n\n".$row2[1].";\n\n";

    for($i=0;$i<$num_fields;$i++){
        while($row = mysqli_fetch_row($result)){
            $return .= "INSERT INTO ".$table." VALUES(";
            for($j=0;$j<$num_fields;$j++){
                $row[$j] = addslashes($row[$j]);
                if(isset($row[$j])){ $return .= '"'.$row[$j].'"';}
                else{ $return .= '""';}
                if($j<$num_fields-1){ $return .= ',';}
            }
            $return .= ");\n";
        }
    }
    $return .= "\n\n\n";
}

#-----Save file
require_once 'vendor/validation.php';
    $alod = validFilename($argv);

//    $fileName = isset($argv[4]) ? $argv[4] : $argv[3];
//    $validFileName = preg_match('/[\w].sql$/', $fileName);
//    if ($validFileName !== 1) {
//        die("ERROR: Wrong file extension!\n");
//    }
//    $dateCurrent = date('Y\-m\-d\-H:i:s');
//    $fileNameDataCurrent = "dump-file-$dateCurrent.sql";

$handle = fopen($alod,"w+");
fwrite($handle,$return);
fclose($handle);
echo "Successfully backed up\n";
}


