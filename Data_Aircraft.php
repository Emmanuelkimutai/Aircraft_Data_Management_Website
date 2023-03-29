<?php
  // Retrieve search query from HTML form
  $search = $_GET['search'];

  // Connect to database
  $db = mysqli_connect('localhost', 'root', '', 'project1');

  // Execute SQL query to search for matching records
  $query = "SELECT * FROM Aircraft WHERE ACModel LIKE '%$search%'";
  $result = mysqli_query($db, $query);

  // Display search results
  while ($row = mysqli_fetch_assoc($result)) {
    echo "<br><h1>Fire Fighting Aircraft</h1><br>";   
    echo "Aircraft Model <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp",$row['ACModel'];
    echo "<br><br>Aircraft Type <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp",$row['ACType'];
    echo "<br><br>Flight Speed <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['FlightSpeed'],"&nbspmph";
    echo "<br><br>Mission Range <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['MissionRange'],"&nbspmiles";
    echo "<br><br>Water Capacity <br>";
    echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp", $row['WaterCapacity'],"&nbspgallous";
  }
?>


</body>
</html>