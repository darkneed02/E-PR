<?php
require '../services/class/connect_db.php';
// require '../services/class/planning-db.php';

$conn = db_connect();
$type_doc = $_GET['type_doc'] ?? '';

if (!empty($type_doc)) {
    // Query to fetch the latest number based on type_doc
    $query = "SELECT regexp_replace(doc_num, '^' || type_doc || '[^0-9]*', '', 'g')::bigint AS running_number 
              FROM planning.tb_plann_pr 
              WHERE type_doc = '$type_doc' 
              ORDER BY running_number DESC 
              LIMIT 1";

    $result = pg_query($conn, $query);

    if ($result && pg_num_rows($result) > 0) {
        $row = pg_fetch_assoc($result);
        $lastNumber = (int)$row['running_number'];
        $nextNumber = str_pad($lastNumber + 1, 5, '0', STR_PAD_LEFT);
    } else {
        $nextNumber = '00001';
    }

    $docNum = $type_doc . $nextNumber;

    echo $docNum;
} else {
    echo "Invalid Document Type";
}

pg_close($conn);
?>
