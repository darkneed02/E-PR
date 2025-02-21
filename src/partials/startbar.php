<div class="startbar d-print-none">
    <!--start brand-->
    <div class="brand">
        <a href="#" class="logo">
            <span>
                <img src="assets/images/logo_kyt.png" alt="logo-small" class="logo-sm">
            </span>
            <span class="">
                <img src="assets/images/img_kyt.png" alt="logo-large" class="logo-lg logo-light">
                <img src="assets/images/img_kyt.png" alt="logo-large" class="logo-lg logo-dark">
            </span>
        </a>
    </div>
    <!--end brand-->
    <!--start startbar-menu-->
    <div class="startbar-menu" >
        <div class="startbar-collapse" id="startbarCollapse" data-simplebar>
            <div class="d-flex align-items-start flex-column w-100">
                <!-- Navigation -->
                <ul class="navbar-nav mb-auto w-100">
                    <?php
                    include('services/class/class_login.php');

                    $conn = db_connect();

                    if ($_SESSION['user_id'] == 'U0001') {
                        $menu_all = menu_all($conn);
                    
                        if ($menu_all && pg_num_rows($menu_all) > 0) {
                            $message_displayed = [
                                'PR' => false
                            ];
                    
                            // เริ่มวนลูปดึงข้อมูล
                            while ($rs_menu = pg_fetch_assoc($menu_all)) {
                                $show_menu = false;
                    
                                // ตรวจสอบค่าของ role_type
                                switch ($rs_menu['role_type']) {
                                    case 'PR':
                                        if (!$message_displayed['PR']) {
                                            // echo "<div class='sidebar-heading'>แผน PR</div>";
                                            $message_displayed['PR'] = true;
                                        }
                                        $show_menu = true;
                                        break;
                    
                                    default:
                                        // แจ้งเตือนประเภท role_type ที่ไม่รู้จัก
                                        echo "<!-- Unknown role_type: {$rs_menu['role_type']} -->";
                                        break;
                                }
                    
                                // แสดงเมนูถ้า $show_menu เป็น true
                                if ($show_menu) {
                                    echo '<li class="nav-item">';
                                    echo '<a class="nav-link" href="' . htmlspecialchars($rs_menu['url'], ENT_QUOTES, 'UTF-8') . '">';
                                    echo '<i class="' . htmlspecialchars($rs_menu['icon'], ENT_QUOTES, 'UTF-8') . '"></i>';
                                    echo '<span>' . htmlspecialchars($rs_menu['role_name_th'], ENT_QUOTES, 'UTF-8') . '</span></a>';
                                    echo '</li>';
                                }
                            }
                        } else {
                            // ไม่มีข้อมูลใน menu_all
                            echo '<li class="nav-item"><a class="nav-link">ไม่พบข้อมูลเมนู</a></li>';
                        }
                    } else {
                        $user_menu = menus($conn, $_SESSION['user_id']);
                    
                        if ($user_menu && pg_num_rows($user_menu) > 0) {
                            while ($menu_use = pg_fetch_assoc($user_menu)) {
                                if ($menu_use['role_type'] == 'PR') {
                                    echo '<li class="nav-item">';
                                    echo '<a class="nav-link" href="' . htmlspecialchars($menu_use['url'], ENT_QUOTES, 'UTF-8') . '">';
                                    echo '<i class="' . htmlspecialchars($menu_use['icon'], ENT_QUOTES, 'UTF-8') . '"></i>';
                                    echo '<span>' . htmlspecialchars($menu_use['role_name_th'], ENT_QUOTES, 'UTF-8') . '</span></a>';
                                    echo '</li>';
                                }
                            }
                        } else {
                            // ไม่มีข้อมูลใน user_menu
                            echo '<li class="nav-item"><a class="nav-link">ไม่พบข้อมูลเมนู</a></li>';
                        }
                    }
                    
                    ?>
                </ul>
            </div>
        </div><!--end startbar-collapse-->
    </div><!--end startbar-menu-->    
</div><!--end startbar-->
<div class="startbar-overlay d-print-none"></div>