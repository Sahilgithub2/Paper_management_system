<?php
session_start();
include_once 'config.php';

if(isset($_POST['submit']))
{    
    $title =  $_POST['title'];
    $type = $_POST['type'];
    $indexing = $_POST['indexing'];
    $venue = $_POST['venue'];
    $volume =  $_POST['volume'];
    $issue = $_POST['issue'];
    $date = $_POST['date'];
    $level = $_POST['level'];
    $abstract =  $_POST['abstract'];
    $keywords = $_POST['keywords'];
    $coauthors = $_POST['coauthors'];
    $user = $_SESSION['username'];


    $sql = "INSERT INTO files(id, username, title, type, venue, volume, issue, date, level, indexing, abstract, keywords, coauthors) VALUES (default, '$user','$title', 
    '$type','$venue','$volume','$issue','$date','$level','$indexing','$abstract','$keywords','$coauthors')";
    


     if (mysqli_query($link, $sql)) {
         header("Location: welcome.php");
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($link);
     }
    //  mysqli_close($link);
}
?>






