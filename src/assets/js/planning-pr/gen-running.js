// document.getElementById("default").addEventListener("change", function () {
//   const typeDoc = this.value; // รับค่าที่เลือกจาก <select>
//   console.log("Selected Type:", typeDoc);

//   fetch("function/create-order-number.php?type_doc=" + typeDoc)
//     .then((response) => response.text())
//     .then((data) => {
//       console.log("Response from PHP:", data);
//       document.getElementById("doc_num").value = data;
//     })
//     .catch((error) => {
//       console.error("Fetch Error:", error);
//     });
// });
// ฟังก์ชันสำหรับอัปเดตเลขเอกสาร
function updateDocNumber(typeDoc) {
  // console.log("Selected Type:", typeDoc);

  fetch("function/create-order-number.php?type_doc=" + typeDoc)
    .then((response) => response.text())
    .then((data) => {
      // console.log("Response from PHP:", data);
      document.getElementById("doc_num").value = data; // อัปเดตเลขเอกสารใน input
    })
    .catch((error) => {
      console.error("Fetch Error:", error);
    });
}

// เมื่อหน้าโหลด
document.addEventListener("DOMContentLoaded", function () {
  const defaultTypeDoc = document.getElementById("default").value; // รับค่าจาก select
  updateDocNumber(defaultTypeDoc); // อัปเดตเลขเอกสาร
});

// เมื่อมีการเปลี่ยนแปลงตัวเลือก
document.getElementById("default").addEventListener("change", function () {
  const typeDoc = this.value; // รับค่าที่เลือก
  updateDocNumber(typeDoc); // อัปเดตเลขเอกสาร
});
