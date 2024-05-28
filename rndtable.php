<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login2.php");

    exit;

}
?>

<?php include 'config.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="facwelcome.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
<div class="header" style="background-color:darkblue" >
    <h1 style="color:white">RNS INSTITUTE OF TECHNOLOGY</h1>
    <ul>
        <li><a href="pr.php" style="color:white">Add new paper</a></li>
        <li><a href="search.html" style="color:white"   >Search</a></li>
        <li><a style="color:white"><b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></a><ul class="dropdown">
            <li><a href="logout.php" class="btn btn-danger ml-3">Log out</a></li>
            <li><a href="reset-password.php" class="btn btn-warning">Reset Password</a></li>
            </ul></li>
    </ul>
</div>
    <h1 class="my-5">Welcome, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>.</h1>
    

   
     <br><br>
     
     <br><br>
     
     
</body>
</html>



<center>
        <table border="1" style="width:100%" >
        <tr>
                <th>Paper Title </th>
                <th>Type</th>
                <th>Name of Journal/ Conference/ Book Chapter</th>
                <th>Volume</th>
                <th>Issue</th>
                <th>Indexing </th>
                <th>Abstract </th>
                <th>Keywords </th>
                <th>Co-authors </th>
            </tr>
            <?php
                $user = $_SESSION['username'];
                $sql = "select * from approvedfiles where username = '$user'";
                $table = mysqli_query($link, $sql);
                $no_of_rows = mysqli_num_rows($table);
                // $result = mysqli_fetch_assoc($data);

                if ($no_of_rows != 0)
                {
                    while ($row = mysqli_fetch_assoc($table))
                    {
                        echo "
                        <tr> 
                        <td>".$row['title']."</td>
                        <td>".$row['type']."</td>
                        <td>".$row['venue']."</td>
                        <td>".$row['volume']."</td>
                        <td>".$row['issue']."</td>
                        <td>".$row['indexing']."</td>
                        <td>".$row['abstract']."</td>
                        <td>".$row['keywords']."</td>
                        <td>".$row['coauthors']."</td>
                        </tr>";
                    }
                }

            ?>
        </table>
</center>