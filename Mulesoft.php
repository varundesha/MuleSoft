<?php
    $conn = new mysqli("localhost", "root", "", "movie");
    if ($conn->connect_errno) {
        echo "Failed to connect to MySQL: " . $conn->connect_error;
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
    body{
        color:white;
    }
table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
}
td {
    font-size:18px;
  background-color: #696969;
}
th {
    font-size:25px;
  background-color: #303030;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
      <table class="center">
  <tr>
    <th>Movie Name</th>
    <th>Lead Actor</th>
    <th>Lead Actress</th>
    <th>Year Of Release</th>
    <th>Director Name</th>
  </tr>
  <?php 
    $query = "SELECT * FROM movies";
          $query_run = mysqli_query($conn,$query);
 
          while ($row = mysqli_fetch_assoc($query_run)){?>
  <tr>
      <?php echo"
    <td> ".$row['MovieName']." </td>
    <td> ".$row['LeadActor']." </td>
    <td> ".$row['LeadActress']." </td>
    <td> ".$row['YearOfRelease']." </td>
    <td> ".$row['DirectorName'].""; ?></td>
  </tr>
  <?php } ?>
</table>
</body>
</html>