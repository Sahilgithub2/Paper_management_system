<?php
// connect to the database
$conn = mysqli_connect('localhost', 'root', '', 'demo');

// Ensure the connection is successful
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Fetch user ID from the database based on the username
$userIdQuery = "SELECT id FROM users WHERE username = '" . $_SESSION["username"] . "'";
$resultUserId = mysqli_query($conn, $userIdQuery);

if ($resultUserId) {
    $row = mysqli_fetch_assoc($resultUserId);
    $userId = $row['id'];

    // Uploads files
    if (isset($_POST['save'])) { // if save button on the form is clicked
        // name of the uploaded file
        $filename = $_FILES['myfile']['name'];

        // destination of the file on the server
        $destination = 'uploads/' . $filename;

        // get the file extension
        $extension = pathinfo($filename, PATHINFO_EXTENSION);

        // the physical file on a temporary uploads directory on the server
        $file = $_FILES['myfile']['tmp_name'];
        $size = $_FILES['myfile']['size'];

        if (!in_array($extension, ['zip', 'pdf', 'docx'])) {
            echo "You file extension must be .zip, .pdf or .docx";
        } elseif ($_FILES['myfile']['size'] > 1000000) { // file shouldn't be larger than 1 Megabyte
            echo "File too large!";
        } else {
            // move the uploaded (temporary) file to the specified destination
            if (move_uploaded_file($file, $destination)) {
                // Insert file details into the database
                $sql = "INSERT INTO files (user_id, name, size, downloads) VALUES ('$userId', '$filename', '$size', 0)";

                if (mysqli_query($conn, $sql)) {
                    echo "File uploaded successfully";
                } else {
                    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                }
            } else {
                echo "Failed to upload file.";
            }
        }
    }
} else {
    echo "Error fetching user ID: " . mysqli_error($conn);
}

// Close the database connection
mysqli_close($conn);
?>
