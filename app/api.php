<?php

$content = trim(file_get_contents("php://input"));
$content = json_decode($content, true);

$con = mysqli_connect("localhost", "root", "", "posts");

if ($content["option"] == "getPosts") {
    $query = mysqli_query($con, "SELECT `posts`.*,COUNT(`postlike`.LIKED) LIKED,users.NAME,users.AVATAR FROM `posts` LEFT JOIN postlike ON posts.ID = postlike.ID_POST LEFT JOIN users ON posts.ID_USER = users.ID GROUP BY posts.ID");
    while ($line = mysqli_fetch_assoc($query)) {
        $row[] = $line;
    }
    $query = mysqli_query($con, "SELECT ID_POST FROM `postlike` WHERE ID_USER = 1");
    while ($line = mysqli_fetch_assoc($query)) {
        $row[$line["ID_POST"]-1]["YOU"] = true;
    }
    $ID = array_column($row, 'ID');
    array_multisort($ID, SORT_DESC, $row);
    echo json_encode($row);
}
if ($content["option"] == "switchLike") {
    $id = $content["id"];
    $query = mysqli_query($con, "SELECT * FROM `postlike` WHERE `ID_POST` = '$id' AND `ID_USER` = '1'");
    $row = mysqli_fetch_array($query);
    if (!$row) {
        mysqli_query($con, "INSERT INTO `postlike` (`ID`, `ID_POST`, `ID_USER`, `LIKED`) VALUES (NULL, '$id', '1', '1');");
        echo json_encode(1);
    } else {
        mysqli_query($con, "DELETE FROM `postlike` WHERE `ID_POST` = $id AND `ID_USER` = 1;");
        echo json_encode(0);
    }
    
}

?>