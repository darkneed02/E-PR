<?php include 'auth.php'; ?>
<?php include 'partials/html.php' ?>

<head>
    <?php $title = "อนุมัติระดับสาขา PR";
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
                                                <th class="text-end">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if (!empty($distric_approval)): ?>
                                                <?php foreach ($distric_approval as $index => $row): ?>
                                                    <tr>
                                                        <td><?php echo $index + 1; // ลำดับ ?></td>
                                                        <td><?php echo htmlspecialchars($row['approve_id']); ?></td>
                                                        <td><?php echo htmlspecialchars($row['short_title']); ?></td>
                                                        <td><?php echo htmlspecialchars($row['requester_name']); // fullname ?></td>
                                                        <td><?php echo htmlspecialchars($row['department_id']); ?></td>
                                                        <td><?php 
                                                                $create_date = new DateTime($row['request_date'], new DateTimeZone('UTC')); // ปรับจาก UTC
                                                                $create_date->setTimezone(new DateTimeZone('Asia/Bangkok')); // กำหนดเขตเวลาไทย
                                                                $thai_year = $create_date->format('Y') + 543; // เพิ่ม 543 ปี
                                                                echo $create_date->format('d/m/') . $thai_year; // ฟอร์แมต วว/ดด/ปปปป แบบไทย
                                                            ?>
                                                        </td>
                                                        <td class="text-end">
                                                            <button type="button" class="btn btn-outline-success fs-12 view-btn" data-view_id="<?php echo $row['approve_id'] ?>"><i class="icofont-eye-open"></i> รายละเอียด</button>
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
    <!-- Modal -->
    <div class="modal fade bd-example-modal-xl" id="detailModal" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="detailModalLabel">รายละเอียด</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="modalContent">
                        <div class="page-content">
                            <div class="container-xxl">
                                    <div class="row justify-content-center">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-body pt-0">
                                                    <div class="row g-2">
                                                        <div class="col-md-4">
                                                            <label class="mb-2">เอกสาร</label>
                                                            <input type="text" class="form-control" name="doc_num" id="doc_num"  readonly>
                                                        </div><!-- end col -->
                                                        <div class="col-md-4">
                                                            <label class="mb-2">ประเภทเอกสาร</label>
                                                            <input type="text" class="form-control" name="type_doc" id="type_doc"  readonly>
                                                        </div> <!-- end col -->
                                                        <div class="col-md-4">
                                                            <label class="mb-2">วันที่</label>
                                                            <div class="input-group" id="DateRange">
                                                                <span class="input-group-text">เริ่ม</span>
                                                                <input type="date" class="form-control" name="start_date" id="start_date" placeholder="Start" aria-label="StartDate">
                                                                <span class="input-group-text">ถึง</span>
                                                                <input type="date" class="form-control rounded-end" name="end_date" id="end_date" placeholder="End" aria-label="EndDate">
                                                            </div>
                                                        </div><!-- end col -->
                                                        <hr> 
                                                        <div class="col-md-6">
                                                            <label class="mb-2">บันทึกส่วนหัว</label> 
                                                            <input type="text" class="form-control" name="header" id="header"  max="80">
                                                        </div><!-- end col -->
                                                        <div class="col-md-6">
                                                            <label class="mb-2">คำอธิบาย</label>
                                                            <textarea name="deatil" id="deatil" class="form-control"></textarea>
                                                        </div><!-- end col -->
                                                    </div><!-- end row -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center">
                                    <div class="col-md-12 col-lg-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <div class="row align-items-center">
                                                    <div class="col">
                                                        <h4 class="card-title"></h4>
                                                    </div><!--end col-->
                                                </div> <!--end row-->
                                            </div><!--end card-header-->
                                            <div class="card-body pt-0">
                                                <div class="table-responsive">
                                                    <table id="list_order_detail" class="table table-bordered text-center">
                                                        <thead>
                                                            <tr>
                                                                <th>ลำดับ</th>
                                                                <th>รายการ</th>
                                                                <th>หมวดการกำหนดบัญชี</th>
                                                                <th>วัสดุ</th>
                                                                <th>ข้อความสั้น</th>
                                                                <th>ปริมาณ</th>
                                                                <th>หน่วย</th>
                                                                <th>วันที่ส่งมอบ</th>
                                                                <th>กลุ่มวัสดุ</th>
                                                                <th>โรงงาน</th>
                                                                <th>ที่เก็บสินค้า</th>
                                                                <th>กลุ่มการจัดซื้อ</th>
                                                                <th>ราคา</th>
                                                                <th>ราคาทั้งหมด</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <!-- แถวใหม่จะถูกเพิ่มที่นี่ -->
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div><!--end card-body-->
                                        </div><!--end card-->
                                    </div> <!--end col-->
                                
                                    <div class="row justify-content-center">
                                        <div class="col-md-12 col-lg-12">
                                            <div class="card">
                                                <div class="card-body pt-0">
                                                <ul class="nav nav-tabs" role="tablist">
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-bs-toggle="tab" href="#evaluate" role="tab" aria-selected="false">ประเมินค่า</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-bs-toggle="tab" href="#meagess" role="tab" aria-selected="false">หมายเหตุ</a>
                                                        </li>
                                                    </ul>

                                                    <!-- Tab panes -->
                                                    <div class="tab-content">
                                                        <div class="tab-pane p-3 active" id="evaluate" role="tabpanel">
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3 row">
                                                                        <label for="grand_total" class="col-sm-2 col-form-label text-lg-end">ราคาประเมิน</label>
                                                                        <div class="col-sm-3">
                                                                            <input class="form-control" type="number" value="" id="grand_total" name="grand_total">
                                                                        </div>
                                                                        <div class="col-sm-7">
                                                                            <div class="row align-items-center">
                                                                                <div class="col-sm-4">
                                                                                <input class="form-control" type="text" value="" id="default_cure" name="default_cure">
                                                                                </div>
                                                                                <div class="col-sm-1 text-center">
                                                                                    <span>/</span>
                                                                                </div>
                                                                                <div class="col-sm-4">
                                                                                    <select id="default_cure_unit" class="form-control" name="unit">
                                                                                        <option value="บาท">บาท</option>
                                                                                        <option value="ดอลลา">ดอลลา</option>
                                                                                        <option value="เย็น">เย็น</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </div>                                                    
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label for="group_mm" class="col-sm-2 col-form-label text-lg-end">กลุ่มวัสดุ</label>
                                                                        <div class="col-sm-10">
                                                                            <input class="form-control" type="text" value="" id="group_mm">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3 row">
                                                                        <label for="grand_total_vat" class="col-sm-2 col-form-label text-lg-end">มูลค่ารวม</label>
                                                                        <div class="col-sm-10">
                                                                            <input class="form-control" type="text" value="" id="grand_total_vat">
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label for="type_vat" class="col-sm-2 col-form-label text-lg-end">หรัสภาษี</label>
                                                                        <div class="col-sm-10">
                                                                            <input class="form-control" type="text" value="" id="default_vat_v">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3 row">
                                                                        <label for="example-text-input" class="col-sm-2 col-form-label text-lg-end">บัญชี G/L</label>
                                                                        <div class="col-sm-10">
                                                                            <input class="form-control" type="text" value="" id="default_g_l">
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label for="example-text-input" class="col-sm-2 col-form-label text-lg-end">ศูนย์ต้นทุน</label>
                                                                        <div class="col-sm-10">
                                                                            <input class="form-control" type="text" value="" id="default_fun_center">
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">ขอบเขตตามหน้าที่</label>
                                                                        <div class="col-sm-9">
                                                                            <input class="form-control" type="text" value="" id="default_spoce">
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">รายการภาระผูกพันธ์</label>
                                                                        <div class="col-sm-9">
                                                                            <input class="form-control" type="text" value="" id="default_messsinons">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3 row">
                                                                        <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">กลุ่มการจัดซื้อ</label>
                                                                        <div class="col-sm-9">
                                                                            <input class="form-control" type="text" value="" id="example-text-input">
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">เงินทุน</label>
                                                                        <div class="col-sm-9">
                                                                            <input class="form-control" type="text" value="" id="default_money_center">
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">Funds Center</label>
                                                                        <div class="col-sm-9">
                                                                            <input class="form-control" type="text" value="" id="default_Funds_center">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane p-3" id="meagess" role="tabpanel">
                                                            <div class="col-lg-6">
                                                                <div class="mb-3 row">
                                                                    <label for="meagess_job" class="col-sm-4 col-form-label text-lg-end">ข้อความจัดซื้อจัดจ้าง</label>
                                                                    <div class="col-sm-8">
                                                                        <input class="form-control" type="text" value="" id="meagess_job">
                                                                    </div>
                                                                </div>
                                                                <div class="mb-3 row">
                                                                    <label for="meagess_list" class="col-sm-4 col-form-label text-lg-end">หมายเหตุรายการ</label>
                                                                    <div class="col-sm-8">
                                                                        <input class="form-control" type="text" value="" id="meagess_list">
                                                                    </div>
                                                                </div>
                                                                <div class="mb-3 row">
                                                                    <label for="meagess_monkbon" class="col-sm-4 col-form-label text-lg-end">ข้อความการส่งมอบ</label>
                                                                    <div class="col-sm-8">
                                                                        <input class="form-control" type="text" value="" id="meagess_monkbon">
                                                                    </div>
                                                                </div>
                                                                <div class="mb-3 row">
                                                                    <label for="meagess_mm" class="col-sm-4 col-form-label text-lg-end">ข้อความในสั่งซื้อวัสดุ</label>
                                                                    <div class="col-sm-8">
                                                                        <input class="form-control" type="text" value="" id="meagess_mm">
                                                                    </div>
                                                                </div>
                                                                <div class="mb-3 row">
                                                                    <label for="megess_price" class="col-sm-4 col-form-label text-lg-end">ข้อความใบเสนอราคา</label>
                                                                    <div class="col-sm-8">
                                                                        <input class="form-control" type="text" value="" id="megess_price">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                </div><!--end card-body-->
                                            </div><!--end card-->
                                        </div> <!--end col-->
                                    </div><!--end row--> 

                                </div><!--end row-->
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-block btn-outline-success" data-bs-dismiss="modal" id="btn_approval_disctract">อนุมัติ</button>
                    <button type="button" class="btn btn-block btn-outline-danger" data-bs-dismiss="modal" id="cancel_btn_planning">ยกเลิก</button>
                    <button type="button" class="btn btn-block btn-outline-secondary" data-bs-dismiss="modal">ปิด</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Javascript  -->
    <!-- vendor js -->
    <?php include 'partials/vendorjs.php' ?>

    
    <script src="assets/js/planning-pr/update-planning.js"></script>

    <script src="assets/js/approval-planning/approval-planning.js"></script> <!-- อนุมัติแผน -->
    <script src="assets/js/approval-planning/cancel-planning.js"></script> <!-- ยกเลิกแผน -->
    
    <script src="assets/libs/simple-datatables/umd/simple-datatables.js"></script>
    <script src="assets/js/pages/datatable.init.js"></script>

    <script src="assets/js/app.js"></script>
    <script src="assets/js/approval-planning/approval-planning.js"></script>
    <script src="assets/js/sweetalert2.js"></script>

</body>
<!--end body-->

</html>