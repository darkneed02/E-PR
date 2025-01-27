<?php include 'auth.php'; ?>
<?php include 'partials/html.php' ?>

<head>
    <?php $title = "รายการแผน PR";
    include 'partials/title-meta.php' ?>

    <link href="assets/libs/simple-datatables/style.css" rel="stylesheet" type="text/css" />

    <?php include 'partials/head-css.php' ?>
</head>


<body>
    <!-- Top Bar Start -->
    <?php include 'partials/topbar.php' ?>
    <!-- Top Bar End -->
    <!-- leftbar-tab-menu -->
    <?php include 'partials/startbar.php' ?>
    <!-- end leftbar-tab-menu-->
    <!-- show table status planning -->
    <?php include 'services/planning/view-planning-table.php' ?>


    <div class="page-wrapper">

        <!-- Page Content-->
        <div class="page-content">
            <div class="container-xxl">
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h4 class="card-title">สถานะรายการแผน PR</h4>
                                    </div><!--end col-->
                                </div> <!--end row-->
                            </div><!--end card-header-->
                            <div class="card-body pt-0">
                                <div class="table-responsive">
                                    <table class="table  mb-0 table-centered" id="datatable_1">
                                        <thead class="table-light">
                                            <tr>
                                                <th>ลำดับ</th>
                                                <th>รหัสรายการ</th>
                                                <th>ชื่อรายการ</th>
                                                <th>ผู้ขออนุมัติ</th>
                                                <th>แผนก</th>
                                                <th>วันเวลา</th>
                                                <th>สถานะ</th>
                                                <th class="text-end">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if (!empty($planningData)): ?>
                                                <?php foreach ($planningData as $index => $row): ?>
                                                    <tr>
                                                        <td><?php echo $index + 1; // ลำดับ 
                                                            ?></td>
                                                        <td><?php echo htmlspecialchars($row['doc_num']); ?></td>
                                                        <td><?php echo htmlspecialchars($row['title']); ?></td>
                                                        <td><?php echo htmlspecialchars($row['firstname'] . ' ' . $row['lastname']); // fullname 
                                                            ?></td>
                                                        <td><?php echo htmlspecialchars($row['department_name']); ?></td>
                                                        <td><?php
                                                            $create_date = new DateTime($row['create_date'], new DateTimeZone('UTC')); // ปรับจาก UTC
                                                            $create_date->setTimezone(new DateTimeZone('Asia/Bangkok')); // กำหนดเขตเวลาไทย
                                                            $thai_year = $create_date->format('Y') + 543; // เพิ่ม 543 ปี
                                                            echo $create_date->format('d/m/') . $thai_year; // ฟอร์แมต วว/ดด/ปปปป แบบไทย
                                                            ?>
                                                        </td>
                                                        <td><?php
                                                            $status_labels = [
                                                                0 => ['text' => 'ร่างแผน', 'class' => 'info'],
                                                                1 => ['text' => 'ขออนุมัติ', 'class' => 'primary'],
                                                                2 => ['text' => 'ระดับสาขา', 'class' => 'warning'],
                                                                3 => ['text' => 'ระดับจังหวัด', 'class' => 'warning'],
                                                                4 => ['text' => 'ระดับเขต', 'class' => 'warning'],
                                                                5 => ['text' => 'อนุมัติสำนักงานใหญ่', 'class' => 'success'],
                                                                10 => ['text' => 'ไม่อนุมัติแผน', 'class' => 'danger']
                                                            ];

                                                            $status = $row['status'];
                                                            if (isset($status_labels[$status])) {
                                                                $label = $status_labels[$status];
                                                                echo '<span class="badge bg-transparent border border-' . $label['class'] . ' text-' . $label['class'] . '">' . $label['text'] . '</span>';
                                                            } else {
                                                                // กรณีสถานะไม่อยู่ในรายการ
                                                                echo '<span class="badge bg-transparent border border-secondary text-secondary">สถานะไม่ระบุ</span>';
                                                            }
                                                            ?>
                                                        </td>
                                                        <td class="text-end">
                                                            <button type="button" class="btn btn-outline-success fs-12 export-btn" data-report_id="<?php echo $row['doc_num'] ?>"><i class="far fa-file-alt"></i> นำข้อมูลออก</button>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            <?php else: ?>
                                                <tr>
                                                    <td colspan="4" class="text-center">No data found</td>
                                                </tr>
                                            <?php endif; ?>
                                        </tbody>
                                    </table><!--end /table-->
                                </div><!--end /tableresponsive-->
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div> <!--end col-->
                </div><!--end row-->
            </div><!-- container -->
            <!--Start Rightbar-->
            <?php include 'partials/endbar.php' ?>
            <!--end Rightbar-->
            <!--Start Footer-->
            <?php include 'partials/footer.php' ?>
            <!--end footer-->
        </div>
        <!-- end page content -->
    </div>
    <!-- end page-wrapper -->

    <!-- Javascript  -->
    <!-- vendor js -->
    <?php include 'partials/vendorjs.php' ?>

    <script src="assets/libs/simple-datatables/umd/simple-datatables.js"></script>
    <script src="assets/js/pages/datatable.init.js"></script>
    <script src="assets/js/planning-pr/export-planning.js"></script>

    <script src="assets/js/app.js"></script>

</body>
<!--end body-->

</html>