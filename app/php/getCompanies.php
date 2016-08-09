<?php
    include_once('config.php');
    $connection = dbConnect($hostname, $username, $password, $database);
    $query = "SELECT * FROM companies;";
    $result = queryDB($connection, $query);

    $companies = array();
    if ($result->num_rows > 0) {
        while($row = $result->fetch_object()) {
            $teamMember;
            $teamMember['id'] = $row->id;
            $teamMember['name'] = $row->name;
            $teamMember['description'] = $row->description;
            $teamMember['website'] = $row->website;
            $teamMember['logo'] = $row->logo;
            array_push($companies, $teamMember);
        }
    } else {
        echo "0 results";
    }
    echo json_encode($companies);
    $connection->close();
?>
