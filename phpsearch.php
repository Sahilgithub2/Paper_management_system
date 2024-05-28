<center>
        <table border="1" style="width:100%">
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
//session_start();
$search = $_POST['search'];
//$user = $_SESSION['username'];

include 'config.php';


if ($link->connect_error){
	die("Connection failed: ". $link->connect_error);
}
 
$sql = "select * from approvedfiles where title like '%$search%' or keywords like '%$search%' or abstract like '%$search%'";

$result = $link->query($sql);

if ($result->num_rows > 0){
while($row = $result->fetch_assoc() ){
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

} else {
	echo "0 records";
}
echo mysqli_error($link);
$link->close();
?>
        </table>
</center>