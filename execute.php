<?php

#------Connect

require_once 'vendor/connect.php';

#-----Checking arguments validation

require_once 'vendor/validation.php';

checkingArgs($conn,$argv);

checkTableName($conn,$argv);

expOrImp($argv,$conn);

validFilename($argv);


