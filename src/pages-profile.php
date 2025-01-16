<?php include 'auth.php'; ?>
<?php include 'partials/html.php' ?>

<head>
    <?php $title = "โปรไฟล์";
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
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h4 class="card-title">โปรไฟล์</h4>
                                    </div><!--end col-->
                                </div> <!--end row-->
                            </div><!--end card-header-->
                            <div class="card-body pt-0">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="name" class="form-label">ชื่อ</label>
                                            <input type="text" class="form-control" id="name" value="<?php echo $profile['firstname']; ?>">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="last_name">นามสกุล</label>
                                            <input type="email" class="form-control" id="last_name" value="<?php echo $profile['lastname']; ?>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label" for="department">แผนก</label>
                                            <input type="text" class="form-control" id="department" value="<?php echo $profile['department_name']; ?>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label" for="position">ต่ำแหน่ง</label>
                                            <input type="text" class="form-control" id="position" value="<?php echo $profile['position_name']; ?>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label" for="level">ระดับ</label>
                                            <input type="text" class="form-control" id="level" value="<?php echo $profile['level']; ?>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label" for="branch">สาขา</label>
                                            <input type="text" class="form-control" id="branch" value="<?php echo $profile['branch']; ?>">
                                        </div>
                                    </div><div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label" for="province">จังหวัด</label>
                                            <input type="text" class="form-control" id="province" value="<?php echo $profile['province']; ?>">
                                        </div>
                                    </div><div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label" for="zone_raot">เขต</label>
                                            <input type="text" class="form-control" id="zone_raot" value="<?php echo $profile['zone_raot']; ?>">
                                        </div>
                                    </div>
                                </div>
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

    <script src="assets/js/app.js"></script>
    <script src="assets/js/sweetalert2.js"></script>



</body>
<!--end body-->

</html>