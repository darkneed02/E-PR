<?php
    $dbhost = "localhost";
    $dbname = "e_pr_db";
    $dbusername = "postgres";
    $dbpassword = "123456789";

    function db_connect() {
        global $dbhost, $dbname, $dbusername, $dbpassword;
        $conn = pg_connect("host=$dbhost dbname=$dbname user=$dbusername password=$dbpassword");

        if(!$conn){
            die("Connection failed: ". pg_last_error());
        }
        return $conn;
    }
?>