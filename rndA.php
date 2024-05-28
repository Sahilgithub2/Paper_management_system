<?php
    session_start();
    include 'config.php';
        $id = $_GET['id'];
        $sql = "call accept('$id')";
        if (mysqli_query($link, $sql)) {
            header("Location: rndwelcome.php");
            exit;
        }
?>