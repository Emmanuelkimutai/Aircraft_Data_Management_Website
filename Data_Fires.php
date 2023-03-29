<?php
  // Retrieve search query from HTML form
  $search = $_GET['search'];

  // Connect to database
  $db = mysqli_connect('localhost', 'root', '', 'project1');

  // Execute SQL query to search for matching records
  $query = "SELECT * FROM firetarget WHERE FireID LIKE '%$search%'";
  $result = mysqli_query($db, $query);

  // Display search results
  while ($row = mysqli_fetch_assoc($result)) {
    echo "<br><h1>Targeted Fires</h1><br>";   
    echo "Fire Number <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp",$row['FireNumber'];
    echo "<br><br>Fire ID <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp",$row['FireID'];
    echo "<br><br>Fire Location <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp",$row['FireLocation'];
    echo "<br><br>Fire Status <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['FireStatus'];
    echo "<br><br>Fire Size <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['FireSize'];
  }
?>


</body>
</html>