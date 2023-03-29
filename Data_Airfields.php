<?php
  // Retrieve search query from HTML form
  $search = $_GET['search'];

  // Connect to database
  $db = mysqli_connect('localhost', 'root', '', 'project1');

  // Execute SQL query to search for matching records
  $query = "SELECT * FROM Airfield WHERE AFID LIKE '%$search%'";
  $result = mysqli_query($db, $query);

  // Display search results
  while ($row = mysqli_fetch_assoc($result)) {
    echo "<br><h1>Fire Fighting Airfields</h1><br>";   
    echo "Airfield ID code <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp",$row['AFID'];
    echo "<br><br>Number of Runways <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp",$row['Runways'];
    echo "<br><br>Number of Hangers <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['Hangers'];
    echo "<br><br>Location:Latitude <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['LOC_LAT'];
    echo "<br><br>Location:Longitude <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['LOC_LONG'];
  }
?>


</body>
</html>