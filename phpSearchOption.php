<?php

$search = $_POST['search'];
$column = $_POST['title'];

include 'config.php';

if ($link->connect_error){
	die("Connection failed: ". $link->connect_error);
}

$sql = "select * from approvedfiles where title like '%$search%'";

$result = $link->query($sql);

if ($result->num_rows > 0){
while($row = $result->fetch_assoc() ){
	echo $row["title"]."  ".$row["volume"]."  ".$row["abstract"]."<br>";
}
} else {
	echo "0 records";
}

$link->close();

?>