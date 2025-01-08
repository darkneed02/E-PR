<?php
// เริ่มต้น session
session_start();

// ทำลาย session ทั้งหมด
session_unset(); // ลบตัวแปรทั้งหมดใน session
session_destroy(); // ทำลาย session

// เปลี่ยนเส้นทางไปยังหน้า login
header("Location: login.php");
exit();
?>