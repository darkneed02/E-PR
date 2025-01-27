<?php include 'auth.php'; ?>
<?php include 'partials/html.php' ?>

<head>
    <?php $title = "วางแผน PR";
    include 'partials/title-meta.php' ?>

    <link href="assets/libs/mobius1-selectr/selectr.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/huebee/huebee.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/vanillajs-datepicker/css/datepicker.min.css" rel="stylesheet" type="text/css" />
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
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col">
                                        <h4 class="card-title mb-0 fw-bold text-truncate">การวางแผน PR</h4>
                                    </div><!--end col-->
                                    <div class="col text-end">
                                        <button type="button" class="btn btn-block  btn-success" id="btn_requst_approve"><i class="far fa-check-circle"></i>
                                            <span class="fw-bold">ขออนุมัติแผน</span>
                                        </button>
                                        <button type="button" class="btn btn-block btn-info" id="btn_darft_planning"><i class="far fa-copy"></i>
                                            <span class="fw-bold">บันทึกร่างแผน</span>
                                        </button>
                                        <button type="button" class="btn btn-block btn-danger" id="btn_cancel_planning"><i class="las la-times-circle"></i></i>
                                            <span class="fw-bold">รีเซ็ตข้อมูล</span>
                                        </button>
                                    </div><!--end col-->
                                </div> <!--end row-->
                            </div><!--end card-header-->
                            <div class="card-body pt-0">
                                <div class="row g-2">
                                    <div class="col-md-4">
                                        <label class="mb-2">เอกสาร</label>
                                        <input type="text" class="form-control" name="doc_num" id="doc_num" readonly>
                                    </div><!-- end col -->
                                    <div class="col-md-4">
                                        <label class="mb-2">ประเภทเอกสาร</label>
                                        <select id="default" name="type_doc">
                                            <option value="PR01" selected>ใบขอเสนอซื้อ</option>
                                            <option value="PR03">ใบขอเสนอจ้าง</option>
                                            <option value="PR02">ใบขอเสนอเช้า</option>
                                        </select>
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
                                        <input type="text" class="form-control" name="header" id="header" max="80">
                                    </div><!-- end col -->
                                    <div class="col-md-6">
                                        <label class="mb-2">คำอธิบาย</label>
                                        <textarea name="deatil" id="deatil" class="form-control"></textarea>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div> <!--end col-->
                </div><!--end row-->

                <!-- ตารางรายการ -->
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
                                    <table id="list_order" class="table table-bordered text-center">
                                        <thead>
                                            <tr>
                                                <th>เลือก</th>
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
                                    <button id="addRowBtn" onclick="addRow()" class="btn btn-success">
                                        <i class="fas fa-plus-circle"></i>
                                    </button>
                                    <button id="deleteRowBtn" onclick="deleteRow()" class="btn btn-danger">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </div>
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div> <!--end col-->
                </div><!--end row-->

                <!-- tab รายการ -->
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-body pt-0">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-bs-toggle="tab" href="#matrial" role="tab" aria-selected="true">ข้อมูลวัสดุ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="tab" href="#quulity" role="tab" aria-selected="false">ปริมาณ/วันที่</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="tab" href="#evaluate" role="tab" aria-selected="false">ประเมินค่า</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="tab" href="#meagess" role="tab" aria-selected="false">หมายเหตุ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="tab" href="#history_darft" role="tab" aria-selected="false">ประวัติการบันทึกร่างแผน PR</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="tab" href="#history_approval" role="tab" aria-selected="false">ประวัติการขออนุมัติ</a>
                                    </li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane p-3 active" id="matrial" role="tabpanel">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="mb-3 row">
                                                    <label for="material" class="col-sm-2 col-form-label text-lg-end">วัสดุ</label>
                                                    <div class="col-sm-10">
                                                        <input class="form-control" type="text" value="" id="material">
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="shortText" class="col-sm-2 col-form-label text-lg-end">ข้อความสั้น</label>
                                                    <div class="col-sm-10">
                                                        <input class="form-control" type="text" value="" id="shortText">
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="materialgroup" class="col-sm-2 col-form-label text-lg-end">กลุ่มวัสดุ</label>
                                                    <div class="col-sm-10">
                                                        <input class="form-control" type="text" value="" id="materialgroup">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane p-3" id="quulity" role="tabpanel">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="mb-3 row align-items-center">
                                                    <label for="quantity" class="col-sm-4 col-form-label text-lg-end">ปริมาณ</label>
                                                    <div class="col-sm-8">
                                                        <input class="form-control" type="text" id="quantity" name="quantity">
                                                    </div>
                                                </div>
                                                <div class="mb-3 row align-items-center">
                                                    <label for="ordered-quantity" class="col-sm-4 col-form-label text-lg-end">ปริมาณที่สั่ง</label>
                                                    <div class="col-sm-8">
                                                        <input class="form-control" type="text" id="ordered-quantity" name="ordered-quantity">
                                                    </div>
                                                </div>
                                                <div class="mb-3 row align-items-center">
                                                    <div class="col-sm-3"></div>
                                                    <div class="col-sm-9">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="options_data" id="exampleRadios1" value="ที่ปิด" checked>
                                                            <label class="form-check-label" for="exampleRadios1">
                                                                ที่ปิด
                                                            </label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="options_data" id="exampleRadios2" value="ID คงที่">
                                                            <label class="form-check-label" for="exampleRadios2">
                                                                ID คงที่
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="mb-3 row">
                                                    <label for="delivery_date" class="col-sm-3 col-form-label text-lg-end">วันที่ส่งมอบ</label>
                                                    <div class="col-sm-9">
                                                        <input class="form-control" type="text" value="" name="delivery_date" id="delivery_date">
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="requst_date" class="col-sm-3 col-form-label text-lg-end">วันที่ขอ</label>
                                                    <div class="col-sm-9">
                                                        <input class="form-control" type="text" value="" id="requst_date" name="requst_date">
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="approvel_date" class="col-sm-3 col-form-label text-lg-end">วันที่อนุมัติ</label>
                                                    <div class="col-sm-9">
                                                        <input class="form-control" type="text" value="" id="approvel_date" name="approvel_date">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane p-3" id="evaluate" role="tabpanel">
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
                                                                <select id="default_cure" class="form-control" name="cure">
                                                                    <option value="TH">TH</option>
                                                                    <option value="USD">USD</option>
                                                                    <option value="JPD">JPD</option>
                                                                </select>
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
                                                        <select id="default_vat_v" class="form-control" name="type_vat">
                                                            <option value="" disabled selected>กรุณาเลือกภาษี</option>
                                                            <option value="0">0%</option>
                                                            <option value="3">3%</option>
                                                            <option value="5">5%</option>
                                                            <option value="7">7%</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="col-lg-6">
                                                <div class="mb-3 row">
                                                    <label for="example-text-input" class="col-sm-2 col-form-label text-lg-end">บัญชี G/L</label>
                                                    <div class="col-sm-10">
                                                        <select id="default_g_l" class="form-control" name="type_doc">
                                                            <option value="" disabled selected>กรุณาเลือกแขนงบัญชี</option>
                                                            <?php foreach ($view_g_l as $data): ?>
                                                                <option value="<?php echo $data['g_l_id']; ?>">
                                                                    <?php echo $data['g_l_name']; ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="example-text-input" class="col-sm-2 col-form-label text-lg-end">ศูนย์ต้นทุน</label>
                                                    <div class="col-sm-10">
                                                        <select id="default_fun_center" class="form-control" name="type_doc">
                                                            <option value="" disabled selected>กรุณาเลือกศูนย์ต้นทุน</option>
                                                            <?php foreach ($cost_center as $data): ?>
                                                                <option value="<?php echo $data['cost_id']; ?>">
                                                                    <?php echo $data['cost_name']; ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">ขอบเขตตามหน้าที่</label>
                                                    <div class="col-sm-9">
                                                        <select id="default_spoce" class="form-control" name="type_doc">
                                                            <option value="" disabled selected>กรุณาเลือกขอบเขตหน้าที่</option>
                                                            <?php foreach ($view_scope as $data): ?>
                                                                <option value="<?php echo $data['id_scope']; ?>">
                                                                    <?php echo $data['scope_name']; ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">รายการภาระผูกพันธ์</label>
                                                    <div class="col-sm-9">
                                                        <select id="default_messsinons" class="form-control" name="type_doc">
                                                            <option value="" disabled selected>กรุณาเลือกภาระผูกพันธ์</option>
                                                            <?php foreach ($commitment as $data): ?>
                                                                <option value="<?php echo $data['id_comment_id']; ?>">
                                                                    <?php echo $data['short_text']; ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="mb-3 row">
                                                    <label for="purchasing_gurop" class="col-sm-3 col-form-label text-lg-end">กลุ่มการจัดซื้อ</label>
                                                    <div class="col-sm-9">
                                                        <input class="form-control" type="text" value="" id="purchasing_gurop">
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">เงินทุน</label>
                                                    <div class="col-sm-9">
                                                        <select id="default_money_center" class="form-control" name="type_doc">
                                                            <option value="" disabled selected>กรุณาเลือกเงินทุน</option>
                                                            <?php foreach ($fund as $data): ?>
                                                                <option value="<?php echo $data['fund_id']; ?>">
                                                                    <?php echo $data['fund_name']; ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label for="example-text-input" class="col-sm-3 col-form-label text-lg-end">Funds Center</label>
                                                    <div class="col-sm-9">
                                                        <select id="default_funds_center" class="form-control" name="type_doc">
                                                            <option value="" disabled selected>กรุณาเลือกศนูย์เงินทุน</option>
                                                            <?php foreach ($s_fund as $data): ?>
                                                                <option value="<?php echo $data['id_s_ct']; ?>">
                                                                    <?php echo $data['name_s_ct']; ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>
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
                                    <div class="tab-pane p-3" id="history_darft" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table  mb-0 table-centered">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th>ลำดับ</th>
                                                        <th>รหัสรายการ</th>
                                                        <th>ชื่อรายการ</th>
                                                        <th>วันเวลา</th>
                                                        <th>สถานะ</th>
                                                        <th class="text-end">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php if (!empty($status_planning_darft)): ?>
                                                        <?php foreach ($status_planning_darft as $index => $row): ?>
                                                            <?php if ($row['status'] == 0): // ตรวจสอบสถานะ 
                                                            ?>
                                                                <tr>
                                                                    <td><?php echo $index + 1; // ลำดับ 
                                                                        ?></td>
                                                                    <td><?php echo $row['doc_num']; ?></td>
                                                                    <td><?php echo $row['title']; ?></td>
                                                                    <td><?php
                                                                        $create_date = new DateTime($row['create_date'], new DateTimeZone('UTC')); // ปรับจาก UTC
                                                                        $create_date->setTimezone(new DateTimeZone('Asia/Bangkok')); // กำหนดเขตเวลาไทย
                                                                        $thai_year = $create_date->format('Y') + 543; // เพิ่ม 543 ปี
                                                                        echo $create_date->format('d/m/') . $thai_year; // ฟอร์แมต วว/ดด/ปปปป แบบไทย
                                                                        ?></td>
                                                                    <td><?php echo "ร่างแผน"; ?></td> <!-- แสดงข้อความตามสถานะ -->
                                                                    <td class="text-end">
                                                                        <a href="planning-darft.php?doc_num=<?php echo $row['doc_num']; ?>" class="btn btn-block btn-outline-success fas-12">รายละเอียด</a>
                                                                        <button class="btn btn-block btn-outline-danger fas-12 cancel_data" data-view_data="<?php echo $row['doc_num']; ?>">ยกเลิก</button>
                                                                    </td>
                                                                </tr>
                                                            <?php endif; ?>
                                                        <?php endforeach; ?>
                                                    <?php else: ?>
                                                        <tr>
                                                            <td colspan="6" class="text-center"><span class="badge bg-transparent border border-warning text-warning fs-20">ไม่พบข้อมูล</span></td>
                                                        </tr>
                                                    <?php endif; ?>
                                                </tbody>
                                            </table><!--end /table-->
                                        </div><!--end /tableresponsive-->
                                    </div>
                                    <div class="tab-pane p-3" id="history_approval" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table  mb-0 table-centered" id="datatable_1">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th>ลำดับ</th>
                                                        <th>รหัสรายการ</th>
                                                        <th>ชื่อรายการ</th>
                                                        <th>วันเวลา</th>
                                                        <th>สถานะ</th>
                                                        <!-- <th class="text-end">Action</th> -->
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php if (!empty($status_planning_procssing)): ?>
                                                        <?php foreach ($status_planning_procssing as $index => $row): ?>
                                                            <tr>
                                                                <td><?php echo $index + 1; // ลำดับ 
                                                                    ?></td>
                                                                <td><?php echo $row['doc_num']; ?></td>
                                                                <td><?php echo $row['title']; ?></td>
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
                                                                <!-- <td class="text-end">
                                                                    <button type="button" class="btn btn-block btn-outline-success fs-12 view-btn">รายละอียด</button>
                                                                </td> -->
                                                            </tr>
                                                        <?php endforeach; ?>
                                                    <?php else: ?>
                                                        <tr>
                                                            <td colspan="4" class="text-center"><span class="badge bg-transparent border border-warning text-warning fs-20">ไม่พบข้อมูล</span></td>
                                                        </tr>
                                                    <?php endif; ?>
                                                </tbody>
                                            </table><!--end /table-->
                                        </div><!--end /tableresponsive-->
                                    </div>
                                </div>
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div> <!--end col-->
                </div><!--end row-->

            </div><!-- container -->


            <!-- Modal Planning PR -->
            <?php include 'assets/modal/planning-pr/planning-pr-modal.php' ?>
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

    <script src="assets/libs/mobius1-selectr/selectr.min.js"></script>
    <script src="assets/libs/huebee/huebee.pkgd.min.js"></script>
    <script src="assets/libs/vanillajs-datepicker/js/datepicker-full.min.js"></script>
    <script src="assets/js/moment.js"></script>
    <script src="assets/libs/imask/imask.min.js"></script>
    <script src="assets/js/pages/forms-advanced.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="assets/js/sweetalert2.js"></script>
    <script src="assets/js/list_order.js"></script><!-- ตารางและ เงื่อนไขในการใช้งาน การเพิ่ม หรือลบ แถว -->
    <script src="assets/js/planning-pr/add-planning.js"></script><!-- บันทึกแผน และ บันทึกแผนร่าง -->
    <script src="assets/js/planning-pr/gen-running.js"></script> <!-- สร้างเลขรหัสรายการออกมา -->
    <script src="assets/js/planning-pr/cancel-planning.js"></script> <!-- ยกเลิกแผน -->
    <script src="assets/libs/simple-datatables/umd/simple-datatables.js"></script>
    <script src="assets/js/pages/datatable.init.js"></script>
</body>
<!--end body-->

</html>