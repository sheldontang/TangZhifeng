<?php

$file = array();

for ($i = 0; $i < 10000; $i++ ){

$file[$i] = fopen("$i.txt","w");
echo fwrite($file[$i], $i);
fclose($file[$i]);
}



?>
