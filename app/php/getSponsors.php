<?php
    include_once('config.php');
    $connection = dbConnect($hostname, $username, $password, $database);
    $query = "SELECT * FROM sponsors;";
    $result = queryDB($connection, $query);

    $sponsors = array();
    if ($result->num_rows > 0) {
        while($row = $result->fetch_object()) {
            $sponsor;
            $sponsor['id'] = $row->id;
            $sponsor['logo'] = $row->logo;
            $sponsor['website'] = $row->website;
            array_push($sponsors, $sponsor);
        }
    } else {
        echo "0 results";
    }
    echo json_encode($sponsors);
    $connection->close();
?>
