<?php

$message = $_POST['msg'];

$files = scandir('./messages');

$num_files = count($files) - 2; // menos . e

$fileName = "msg-{$num_files}.txt";

$file = fopen("./messages/{$fileName}","x");

fwrite($file,$message);

fclose($file);

header("location: index.php");