<?php include 'auth.php'; ?>
<?php include 'partials/html.php' ?>

<head>
    <?php $title = "โปรไฟล์";
    include 'partials/title-meta.php' ?>

    <link href="assets/libs/simple-datatables/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/tobii/css/tobii.min.css" rel="stylesheet" type="text/css" />

    <?php include 'partials/head-css.php' ?>
</head>


<body>
    <!-- Top Bar Start -->
    <?php include 'partials/topbar.php' ?>
    <!-- Top Bar End -->
    <!-- leftbar-tab-menu -->
    <?php include 'partials/startbar.php' ?>
    <!-- end leftbar-tab-menu-->
    <!-- show profile -->
    <?php
    require 'services/class/class-profile.php';
    require 'services/profile/profile-user.php';
    $user_id = $_SESSION['user_id']; // Replace with a valid user_id
    $profile = view_profile($conn, $user_id);
    ?>


    <div class="page-wrapper">

        <!-- Page Content-->
        <div class="page-content">
            <div class="container-xxl">
                <!-- new -->
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-4 align-self-center mb-3 mb-lg-0">
                                        <div class="d-flex align-items-center flex-row flex-wrap">
                                            <div class="position-relative me-3">
                                                <img src="assets/images/users/avatar-12.jpg" alt="" height="120" class="rounded-circle">
                                                <!-- <a href="#" class="thumb-md justify-content-center d-flex align-items-center bg-primary text-white rounded-circle position-absolute end-0 bottom-0 border border-3 border-card-bg">
                                                    <i class="fas fa-camera"></i>
                                                </a> -->
                                            </div>
                                            <div class="">
                                                <h5 class="fw-semibold fs-22 mb-1"><?php echo $profile['firstname']; ?> <?php echo $profile['lastname']; ?></h5>
                                                <p class="mb-0 text-muted fw-medium"><?php echo $profile['department_name']; ?></p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div> <!--end col-->
                </div><!--end row-->
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-header">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h4 class="card-title">ข้อมูลทั่วไป</h4>
                                    </div><!--end col-->
                                </div> <!--end row-->
                            </div><!--end card-header-->
                            <div class="card-body pt-0">
                                <ul class="list-unstyled mb-0">
                                    <!-- <li class=""><i class="las la-birthday-cake me-2 text-secondary fs-22 align-middle"></i> <b> Birth Date </b> : 06 June 1989</li> -->
                                    <li class="mt-2"><i class="las la-briefcase me-2 text-secondary fs-22 align-middle"></i> <b> ตำแหน่ง </b> : <?php echo $profile['position_name']; ?></li>
                                    <li class="mt-2"><i class="las la-university me-2 text-secondary fs-22 align-middle"></i> <b> ระดับ </b> : <?php echo $profile['level']; ?></li>
                                    <li class="mt-2"><i class="las la-language me-2 text-secondary fs-22 align-middle"></i> <b> สาขา </b> : <?php echo $profile['branch']; ?></li>
                                    <li class="mt-2"><i class="las la-language me-2 text-secondary fs-22 align-middle"></i> <b> จังหวัด </b> : <?php echo $profile['province']; ?></li>
                                    <li class="mt-2"><i class="las la-language me-2 text-secondary fs-22 align-middle"></i> <b> เขต </b> : <?php echo $profile['zone_raot']; ?></li>
                                    <li class="mt-2"><i class="las la-phone me-2 text-secondary fs-22 align-middle"></i> <b> เบอร์โทร </b> : <?php echo $tel = '00-0000-0000'; ?></li>
                                    <li class="mt-2"><i class="las la-envelope text-secondary fs-22 align-middle me-2"></i> <b> อีเมลล์ </b> : <?php echo $email = 'mannat.theme@gmail.com'; ?></li>
                                </ul>
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div> <!--end col-->
                    <div class="col-md-9">
                        <ul class="nav nav-tabs mb-3" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link fw-medium active" data-bs-toggle="tab" href="#informations" role="tab" aria-selected="false" tabindex="-1">ข้อมูลทั่วไป</a>
                            </li>
                            <!-- <li class="nav-item" role="presentation">
                                <a class="nav-link fw-medium" data-bs-toggle="tab" href="#chaneg-password" role="tab" aria-selected="false" tabindex="-1">ทำการเปลี่ยนรหัสผ่าน</a>
                            </li> -->
                            <!-- <li class="nav-item" role="presentation">
                                <a class="nav-link fw-medium " data-bs-toggle="tab" href="#settings" role="tab" aria-selected="true">Settings</a>
                            </li> -->
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane p-3 active show" id="informations" role="tabpanel">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h4 class="card-title">ข้อมูลทั่วไป</h4>
                                            </div><!--end col-->
                                        </div> <!--end row-->
                                    </div><!--end card-header-->
                                    <div class="card-body pt-0">
                                        <form id="information-user">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="mb-3 row">
                                                        <label for="firstname" class="col-sm-2 col-form-label text-end">ชื่อ</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['firstname']; ?>" id="firstname" name="firstname">
                                                        </div>
                                                    </div>
                                                    <div class="mb-3 row">
                                                        <label for="department" class="col-sm-2 col-form-label text-end">แผนก</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['department_name']; ?>" id="department" name="department">
                                                        </div>
                                                    </div>
                                                    <div class="mb-3 row">
                                                        <label for="level" class="col-sm-2 col-form-label text-end">ระดับ</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['level']; ?>" id="level" name="level">
                                                        </div>
                                                    </div>
                                                    <div class="mb-3 row">
                                                        <label for="provinces" class="col-sm-2 col-form-label text-end">จังหวัด</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['province']; ?>" id="provinces" name="provinces">
                                                        </div>
                                                    </div>
                                                </div><!--end col-->
                                                <div class="col-lg-6">
                                                    <div class="mb-3 row">
                                                        <label for="lastname" class="col-sm-2 col-form-label text-end">นามสกุล</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['lastname']; ?>" id="lastname" name="lastname">
                                                        </div>
                                                    </div>
                                                    <div class="mb-3 row">
                                                        <label for="positon" class="col-sm-2 col-form-label text-end">ตำแหน่ง</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['position_name']; ?>" id="positon" name="positon">
                                                        </div>
                                                    </div>
                                                    <div class="mb-3 row">
                                                        <label for="branch" class="col-sm-2 col-form-label text-end">สาขา</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['branch']; ?>" id="branch" name="branch">
                                                        </div>
                                                    </div>
                                                    <div class="mb-3 row">
                                                        <label for="zone_raot" class="col-sm-2 col-form-label text-end">เขต</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text" value="<?php echo $profile['zone_raot']; ?>" id="zone_raot" name="zone_raot">
                                                        </div>
                                                    </div>
                                                </div><!--end col-->
                                                <div class="col-lg-6">
                                                    <button type="button" class="btn  btn-outline-primary btn-block">บันทึก</button>
                                                    <button type="button" class="btn  btn-outline-danger btn-block">ยกเลิก</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div><!--end card-body-->
                                </div><!--end card-->
                            </div>
                            <div class="tab-pane p-3" id="chaneg-password" role="tabpanel">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Change Password</h4>
                                    </div><!--end card-header-->
                                    <div class="card-body pt-0">
                                        <div class="form-group mb-3 row">
                                            <label class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center form-label">Current Password</label>
                                            <div class="col-lg-9 col-xl-8">
                                                <input class="form-control" type="password" placeholder="Password">
                                                <a href="#" class="text-primary font-12">Forgot password ?</a>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3 row">
                                            <label class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center form-label">New Password</label>
                                            <div class="col-lg-9 col-xl-8">
                                                <input class="form-control" type="password" placeholder="New Password">
                                            </div>
                                        </div>
                                        <div class="form-group mb-3 row">
                                            <label class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center form-label">Confirm Password</label>
                                            <div class="col-lg-9 col-xl-8">
                                                <input class="form-control" type="password" placeholder="Re-Password">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-9 col-xl-8 offset-lg-3">
                                                <button type="submit" class="btn btn-primary">Change Password</button>
                                                <button type="button" class="btn btn-danger">Cancel</button>
                                            </div>
                                        </div>
                                    </div><!--end card-body-->
                                </div><!--end card-->
                            </div>
                            <div class="tab-pane p-3" id="settings" role="tabpanel">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Other Settings</h4>
                                    </div><!--end card-header-->
                                    <div class="card-body pt-0">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="Email_Notifications" checked="">
                                            <label class="form-check-label" for="Email_Notifications">
                                                Email Notifications
                                            </label>
                                            <span class="form-text text-muted fs-12 mt-0">Do you need them?</span>
                                        </div>
                                        <div class="form-check mt-2">
                                            <input class="form-check-input" type="checkbox" value="" id="API_Access">
                                            <label class="form-check-label" for="API_Access">
                                                API Access
                                            </label>
                                            <span class="form-text text-muted font-12 mt-0">Enable/Disable access</span>
                                        </div>
                                    </div><!--end card-body-->
                                </div><!--end card-->
                            </div>
                        </div>
                    </div> <!--end col-->
                </div>
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

    <script src="assets/js/app.js"></script>
    <script src="assets/js/sweetalert2.js"></script>

    <script src="assets/libs/tobii/js/tobii.min.js"></script>
    <script src="assets/js/pages/profile.init.js"></script>



</body>
<!--end body-->

</html>