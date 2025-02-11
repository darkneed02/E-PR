<?php
header("Content-Type: application/json"); // ตั้งค่าให้เป็น JSON response
require '../../auth.php';
require '../../services/class/connect_db.php';
require '../../services/class/class-profile.php';

$conn = db_connect();

if (!$conn) {
    echo json_encode(["status" => "error", "message" => "Database connection failed: " . pg_last_error()]);
    exit;
}

// รับ JSON ข้อมูลที่ส่งมา
$jsonData = file_get_contents("php://input");
$data_customer = json_decode($jsonData, true);

// ตรวจสอบว่า JSON ถูกต้อง
if (!$data_customer) {
    echo json_encode(["status" => "error", "message" => "Invalid JSON data"]);
    exit;
}

// ดึงค่าจาก JSON
$firstname = $data_customer["firstname"] ?? null;
$lastname = $data_customer["lastname"] ?? null;
$level = $data_customer["level"] ?? null;
$branch = $data_customer["branch"] ?? null;
$provinces = $data_customer["provinces"] ?? null;
$zone_raot = $data_customer["zone_raot"] ?? null;
$user_id = $data_customer["uid"] ?? null;

// เช็คว่า user_id มีค่าหรือไม่
if (!$user_id) {
    echo json_encode(["status" => "error", "message" => "User ID is required"]);
    exit;
}

// อัปเดตข้อมูลผู้ใช้
if (updateprofile($conn, $firstname, $lastname,$level, $branch, $provinces, $zone_raot, $user_id)) {
    echo json_encode(["status" => "success", "message" => "ทำการอัพเดตข้อมูลสำเร็จ"]);
} else {
    error_log("Update error: " . pg_last_error($conn));
    echo json_encode(["status" => "error", "message" => "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ"]);
}

// ปิดการเชื่อมต่อฐานข้อมูล
pg_close($conn);
