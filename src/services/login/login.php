<?php
session_start();

include('../class/connect_db.php');
include('../class/class_login.php');

// เชื่อมต่อฐานข้อมูล
$conn = db_connect();

if (!empty($_POST['username']) && !empty($_POST['password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // ตรวจสอบการเข้าสู่ระบบ
    $result = check_user_login($conn, $username, $password);

    if ($result === false) {
        echo json_encode(['status' => 'error', 'message' => 'Database query error']);
        exit;
    }

    if (pg_num_rows($result) > 0) {
        $row = pg_fetch_assoc($result);

        if ($row['is_deleted'] == 1) {
            echo json_encode(['status' => 'error', 'message' => 'ข้อมูลของท่านได้ทำการยกเลิก กรุณาแจ้งผู้ดูแลระบบ']);
            exit;
        } else {
            // ตั้งค่า Session
            $_SESSION['fullname'] = $row['firstname'] . ' ' . $row['lastname'];
            $_SESSION['user_id'] = $row['user_id'];
            $_SESSION['department_name'] = $row['department_name'];

            $response = [
                'status' => 'success',
                'url' => 'planning-pr.php' // ค่าเริ่มต้น
            ];

            if ($_SESSION['user_id'] == 'U0001') {
                // ดึงเมนูทั้งหมดสำหรับ Admin
                $menu_all = menu_all($conn);
                if ($menu_all && pg_num_rows($menu_all) > 0) {
                    $rsmenuone = pg_fetch_assoc($menu_all);
                    $response['url'] = $rsmenuone['url']; // URL สำหรับ redirect
                } else {
                    $response['message'] = 'ไม่พบเมนูสำหรับผู้ดูแลระบบ';
                }
            } else {
                // ดึงเมนูเฉพาะของผู้ใช้งาน
                $menu_user = menus($conn, $_SESSION['user_id']);
                if ($menu_user && pg_num_rows($menu_user) > 0) {
                    $rsmenu = pg_fetch_assoc($menu_user);
                    $response['url'] = $rsmenu['url']; // URL สำหรับ redirect
                } else {
                    $response['message'] = 'ไม่พบเมนูสำหรับผู้ใช้งาน';
                }
            }

            echo json_encode($response);
            exit;
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Username หรือ Password ของท่านไม่ถูกต้อง']);
        exit;
    }
} else {
    echo json_encode(['status' => 'error', 'message' => 'กรุณากรอก Username และ Password']);
    exit;
}
