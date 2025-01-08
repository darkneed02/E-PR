<?php
session_start();

// ตรวจสอบว่าได้ล็อกอินแล้วหรือยัง
if (!isset($_SESSION['user_id']) || empty($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>