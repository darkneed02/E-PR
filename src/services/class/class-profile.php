<?php
function getprofile($conn, $user_id)
{
    $query = "SELECT * FROM tb_user WHERE user_id = $1";
    $result = pg_query_params($conn, $query, array($user_id));

    if (!$result) {
        error_log("Query failed: " . pg_last_error($conn));
        return false;
    }

    return pg_fetch_assoc($result);
}

function updateprofile($conn, $firstname, $lastname,  $level, $branch, $province, $zone_raot, $user_id)
{
    $query = "update tb_user set firstname = $1, lastname = $2, level = $3 , branch = $4, province = $5 ,zone_raot = $6 where user_id = $7";

    $result = pg_query_params($conn, $query, array(
        $firstname,
        $lastname,
        $level,
        $branch,
        $province,
        $zone_raot,
        $user_id
    ));

    return $result;
}
