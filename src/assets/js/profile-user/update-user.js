$(document).ready(function () {
    $("#save_customer").on("click", function () {
        let userData = {
            uid: $("#uid").val(),
            firstname: $("#firstname").val(),
            lastname: $("#lastname").val(),
            level: $("#level").val(),
            provinces: $("#provinces").val(),
            branch: $("#branch").val(),
            zone_raot: $("#zone_raot").val(),
        };

        console.log(userData);

        swal.fire({
            title: "ท่านต้องการเปลี่ยนข้อมูลของท่านใช่หรือไม่",
            text: "รหัสผู้ใช้งาน " + userData.uid,
            icon: "question",
            showCancelButton: true,
            confirmButtonText: "ใช่, ทำรายการ",
            cancelButtonText: "ยกเลิก",
        }).then((result) => {
            if (result.isConfirmed) {
                // แสดง SweetAlert พร้อม Bootstrap Spinner
                swal.fire({
                    title: "กำลังดำเนินการ...",
                    html: '<div class="spinner-border text-primary" role="status"></div><br>กรุณารอสักครู่',
                    allowOutsideClick: false,
                    showConfirmButton: false,
                });

                setTimeout(() => {
                    $.ajax({
                        url: "services/profile/update-profile.php",
                        type: "POST",
                        contentType: "application/json",
                        data: JSON.stringify(userData),
                        dataType: "json",
                        success: function (response) {
                            if (response.status === "success") {
                                swal.fire({
                                    title: "สำเร็จ",
                                    text: response.message,
                                    icon: "success",
                                    showConfirmButton: false
                                }).then(() => {
                                    location.reload(); // รีเฟรชหน้าจอเมื่อบันทึกสำเร็จ
                                });
                            } else {
                                swal.fire({
                                    title: "เกิดข้อผิดพลาด",
                                    text: response.message,
                                    icon: "error",
                                    timer: 2000,
                                    showConfirmButton: false
                                });
                            }
                        },
                        error: function () {
                            swal.fire({
                                title: "เกิดข้อผิดพลาด",
                                text: "ไม่สามารถบันทึกข้อมูลได้",
                                icon: "error",
                                timer: 2000,
                                showConfirmButton: false
                            });
                        }
                    });
                }, 1000); // หน่วงเวลา 1 วินาที
            }
        });
    });
});
