<?php

//if (isset($argv[3])) {
//    $tableName = $argv[3];
//} else {
//    $tableName = '*';
//}

//$tableName = isset($argv[3]) ? $argv[3] : '*';

$is_filename = isset($argv[3]) && pathinfo($argv[3], PATHINFO_EXTENSION) === 'sql';

if (!isset($argv[3]) || $argv[3] === '*' || $is_filename) {
    $tables = ['users', 'posts'];

//    if (mysqli_query($link, "SHOW TABLES")) {
//        $tables = [''];
//    } else {
//        echo 'cant connect';exit;
//    }
} else {
    $tables = explode(',', $argv[3]);
}
var_dump($tables);
