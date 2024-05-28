<?php
session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Research paper mangment system</title>
    </head>
    <body>
        <form name="add" method="post" action="addpaper.php" enctype="multipart/form-data">
            <header><h1>Add new paper<h1></header>
            <label>Title<span> * </span></label>
            <textarea id="title" name="title" rows="2" cols="50" required></textarea>
            <br><br>
            <label for="type">Type<span> * </span></label>
            <select name="type" id="type">
                <option value="journal">Journal</option>
                <option value="conference">Conference</option>
                <option value="bookchapter">Book Chapter</option>
              </select>
            <br>
            <label>Name of Journal/ Conference/ Book Chapter<span> * </span></label>
            <textarea id="venue" name="venue" rows="2" cols="50" required></textarea>
            <br><br>
            <label>Volume<span> * </span></label>
            <input name="volume" type="text" value="" required />
            <br><br>
            <label>Issue<span> * </span></label>
            <input name="issue" type="text" value="" required />
            <br><br>
            <label>Date<span> * </span></label>
            <input name="date" type="date" value="" required />
            <br><br>
            <input type="radio" id="level1" name="level" value="National" required>
            <label for="level1"> National </label><span>
            <input type="radio" id="level2" name="level" value="International">
            <label for="level2"> International</label>
            <br><br>
            <label>Indexing [SCI/SCIE/Scopus/Web of Science/Others]<span> * </span></label>
            <input name="indexing" type="text" value="" required />
            <br><br>
            <label for="abstract">Abstract<span> * </span></label>
            
            <textarea id="abstract" name="abstract" rows="4" cols="50" required></textarea>
            <br><br>
            

            <label for="keywords">Keywords <span> * </span></label>
            <textarea id="keywords" name="keywords" rows="4" cols="50" required></textarea>
            <br><br>
            
            <label for="coauthors">Co-authors (if any)</label>
            
            <textarea id="coauthors" name="coauthors" rows="4" cols="20"></textarea>
            <br><br>
            <button type="submit" name="submit">Submit</button>
            <button type="button" id="uploadBtn">Upload</button>
            <input type="file" name="fileToUpload" id="fileToUpload" style="display:none;">
          </form>
          <script>
        document.getElementById("uploadBtn").addEventListener("click", function() {
            document.getElementById("fileToUpload").click();
        });
    </script>
    </body>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

form {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

header {
    text-align: center;
    margin-bottom: 20px;
}

h1 {
    color: #333;
}

label {
    display: block;
    margin-bottom: 5px;
}

span {
    color: black; /* Red color for required fields */
}

textarea,
input,
select {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #4caf50;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

/* Responsive styles for smaller screens */
@media screen and (max-width: 600px) {
    form {
        margin: 10px;
    }
}

    </style>
</html>