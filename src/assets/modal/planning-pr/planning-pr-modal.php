            <!-- หมวดกำหนดบัญชี -->
            <div class="modal fade" id="dataModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title m-0" id="exampleModalDefaultLabel">หมวดกำหนดบัญชี</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div><!--end modal-header-->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <!-- ช่องค้นหา -->
                                    <input type="text" id="searchInputDataModal" class="form-control mb-2" placeholder="ค้นหา...">
                                    <ul class="mt-2 mb-0 list-group" id="dataList">
                                        <li class="list-group-item" data-value="A สินทรัพย์" data-name="สินทรัพย์">A สินทรัพย์</li>
                                        <li class="list-group-item" data-value="K ศูนย์ต้นทุน" data-name="ศูนย์ต้นทุน">K ศูนย์ต้นทุน</li>
                                        <li class="list-group-item" data-value="" data-name="ไม่เลือก">ไม่เลือก</li>
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end modal-body-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div><!--end modal-footer-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div><!--end modal-->


            <!-- วัสดุ -->
            <div class="modal fade" id="dataModalMM" tabindex="-1" role="dialog" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title m-0" id="exampleModalDefaultLabel">วัสดุ</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div><!--end modal-header-->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <!-- ช่องค้นหา -->
                                    <input type="text" id="searchInputMM" class="form-control mb-2" placeholder="ค้นหา...">
                                    <ul class="mt-2 mb-0 list-group" id="dataListMM">
                                        <?php foreach ($dataList as $item): ?>
                                            <li class="list-group-item" data-value="<?= $item['id_mm'] ?>" data-name="<?= $item['name_mm'] ?>">
                                                <?= $item['id_mm'] ?> || <?= $item['name_mm'] ?>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end modal-body-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div><!--end modal-footer-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div><!--end modal-->


            <!-- หน่วย -->
            <div class="modal fade" id="dataModalUU" tabindex="-1" role="dialog" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title m-0" id="exampleModalDefaultLabel">หน่วย</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div><!--end modal-header-->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <input type="text" id="searchInputUU" class="form-control mb-2" placeholder="ค้นหา...">
                                    <ul class="mt-2 mb-0 list-group" id="dataListUU">
                                        <li class="list-group-item" data-value="เล่ม">เล่ม</li>
                                        <li class="list-group-item" data-value="ห่อ">ห่อ</li>
                                        <li class="list-group-item" data-value="ซอง">ซอง</li>
                                        <li class="list-group-item" data-value="แผ่น">แผ่น</li>
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end modal-body-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div><!--end modal-footer-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div><!--end modal-->

            <!-- กลุ่มวัดสุ -->
            <div class="modal fade" id="dataModalMMG" tabindex="-1" role="dialog" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title m-0" id="exampleModalDefaultLabel">กลุ่มวัสดุ</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div><!--end modal-header-->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <input type="text" id="searchInputMMG" class="form-control mb-2" placeholder="ค้นหา...">
                                    <ul class="mt-2 mb-0 list-group" id="dataListMMG">
                                        <?php foreach ($datagroupMM as $item): ?>
                                            <li class="list-group-item" data-value="<?= $item['id_group'] ?>">
                                                <?= $item['id_group'] ?> || <?= $item['name_group'] ?>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end modal-body-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div><!--end modal-footer-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div><!--end modal-->

            <!-- โรงงาน -->
            <div class="modal fade" id="dataModalUI" tabindex="-1" role="dialog" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title m-0" id="exampleModalDefaultLabel">โรงงาน</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div><!--end modal-header-->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <input type="text" id="searchInputUI" class="form-control mb-2" placeholder="ค้นหา...">
                                    <ul class="mt-2 mb-0 list-group" id="dataListUI">
                                        <?php foreach ($datafactory as $item): ?>
                                            <li class="list-group-item" data-value="<?= $item['id_factory'] ?>">
                                                <?= $item['id_factory'] ?> || <?= $item['name_factory'] ?>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end modal-body-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div><!--end modal-footer-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div><!--end modal-->

            <!-- ที่เก็บสินค้า -->
            <div class="modal fade" id="dataModalMMR" tabindex="-1" role="dialog" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title m-0" id="exampleModalDefaultLabel">ที่เก็บสินค้า</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div><!--end modal-header-->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <input type="text" id="searchInputMMR" class="form-control mb-2" placeholder="ค้นหา...">
                                    <ul class="mt-2 mb-0 list-group" id="dataListMMR">
                                        <?php foreach ($datastorage as $item): ?>
                                            <li class="list-group-item" data-value="<?= $item['name_st_lo'] ?>">
                                                <?= $item['name_st_lo'] ?> || <?= $item['detail'] ?>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end modal-body-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div><!--end modal-footer-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div><!--end modal-->

            <!-- กลุ่มจัดซื้อ -->
            <div class="modal fade" id="dataModalMMRL" tabindex="-1" role="dialog" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title m-0" id="exampleModalDefaultLabel">กลุ่มการจัดซื้อ</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div><!--end modal-header-->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <input type="text" id="searchInputMMRL" class="form-control mb-2" placeholder="ค้นหา...">
                                    <ul class="mt-2 mb-0 list-group" id="dataListMMRL">
                                        <?php foreach ($datapurchasing_group as $item): ?>
                                            <li class="list-group-item" data-value="<?= $item['id_ph_gt'] ?>">
                                                <?= $item['id_ph_gt'] ?> || <?= $item['name_ph_gt'] ?>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end modal-body-->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div><!--end modal-footer-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div><!--end modal-->