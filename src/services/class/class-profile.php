<?php
    function getprofile($conn, $user_id){
        $query = "SELECT * FROM tb_user WHERE user_id = $1";
        $result = pg_query_params($conn, $query, array($user_id));
        
        if (!$result) {
            error_log("Query failed: " . pg_last_error($conn));
            return false;
        }
        
        return pg_fetch_assoc($result);
    }
?>