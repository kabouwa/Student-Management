<?php

function DSN($host,$port,$dbname){return "mysql:host=" . "sql311.infinityfree.com" . ";port=" . 3306 . ";dbname=" . "if0_42208730_dev104" . ";charset=utf8";}
//Establish connection to db

try{
    $dsn = DSN(DB['host'],DB['port'],DB['name']);
    $conn = new PDO(
        $dsn,
        "if0_42208730",
        "ASu7JuiT4q"
    );

    $cursor = $conn->query("SELECT * FROM Student");
    $stds = $cursor->fetchAll(PDO::FETCH_ASSOC);
    print_r($stds);

}catch(Exception $e){
    die("<h1>CANNOT ESTABLISH CONNECTION TO DATABASE !</h1>");
}
?>