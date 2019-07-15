<?php
require_once ('vendor/connect.php');

function import($conn,$argv){

    $filename = $argv[3];
    $handle = fopen($filename,"r+");
    $contents = fread($handle,filesize($filename));
    $sql = explode(';',$contents);
    foreach($sql as $query){
        $result = mysqli_query($conn,$query);
        if($result){
            echo "$query.'SUCCESS'";
        }
    }
    fclose($handle);
    echo "\nSuccessfully imported\n";
}


