var selectedCell;

// ฟังก์ชันเพิ่มแถวใหม่
function addRow(numRows = 1) {
  const table = document
    .getElementById("list_order")
    .getElementsByTagName("tbody")[0];

  for (let j = 0; j < numRows; j++) {
    const newRow = table.insertRow();

    for (let i = 0; i < 14; i++) {
      const cell = newRow.insertCell(i);

      if (i === 0) {
        // คอลัมน์ 0: Checkbox
        cell.innerHTML = `<input class="form-check-input delete-checkbox" type="checkbox">`;
      } else if (i === 7) {
        // คอลัมน์ 7: วันที่
        cell.innerHTML = `<input type="date" class="form-control" style="border: none; width: 100%; background: transparent;">`;
      } else if ([1, 2, 3, 6, 8, 9, 10, 11].includes(i)) {
        // คอลัมน์ที่ต้องเปิด Modal
        cell.contentEditable = true;
        cell.textContent = "";

        cell.addEventListener("click", function () {
          selectedCell = this;

          const modalId = {
            2: "dataModal",
            3: "dataModalMM",
            6: "dataModalUU",
            8: "dataModalMMG",
            9: "dataModalUI",
            10: "dataModalMMR",
            11: "dataModalMMRL",
          }[i];

          const modalInstance = new bootstrap.Modal(document.getElementById(modalId));
          modalInstance.show();
        });
      } else {
        // คอลัมน์อื่นๆ
        cell.contentEditable = true;
        cell.textContent = "";
      }
    }
  }
}

// ฟังก์ชันลบแถว
function deleteRow() {
  const table = document.getElementById("list_order").getElementsByTagName("tbody")[0];
  const checkboxes = table.querySelectorAll(".delete-checkbox");

  let rowsDeleted = 0;
  checkboxes.forEach((checkbox) => {
    if (checkbox.checked) {
      table.deleteRow(checkbox.closest("tr").rowIndex - 1);
      rowsDeleted++;
    }
  });

  if (rowsDeleted === 0) {
    Swal.fire({
      icon: "warning",
      title: "ไม่มีรายการที่เลือก",
      text: "กรุณาเลือกรายการที่ท่านต้องการลบ",
      confirmButtonText: "ตกลง",
    });
  }
}

// ฟังก์ชันค้นหาใน Modal
function filterList(inputId, listId) {
  document.getElementById(inputId).addEventListener("input", function () {
    const filter = this.value.toLowerCase();
    document.querySelectorAll(`#${listId} li`).forEach((item) => {
      const text = item.textContent.toLowerCase();
      item.style.display = text.includes(filter) ? "" : "none";
    });
  });
}


// ฟังก์ชันจัดการ Modal และอัปเดตข้อมูลในตาราง
function setupModalHandler(modalId, listId, targetColumnIndex) {
  document.querySelectorAll(`#${listId} li`).forEach((item) => {
    item.addEventListener("click", function () {
      if (selectedCell) {
        const selectedValue = this.getAttribute("data-value");
        const selectedName = this.getAttribute("data-name");

        selectedCell.textContent = selectedValue;

        const row = selectedCell.closest("tr");
        if (row) {
          const targetCell = row.cells[targetColumnIndex];
          if (targetCell) {
            targetCell.textContent = selectedName;
          }
        }

        const modalInstance = bootstrap.Modal.getInstance(document.getElementById(modalId));
        modalInstance.hide();
      }
    });
  });
}

// เรียกใช้งานฟังก์ชัน
setupModalHandler("dataModal", "dataList");
setupModalHandler("dataModalMM", "dataListMM", 4);
setupModalHandler("dataModalUU", "dataListUU");
setupModalHandler("dataModalMMG", "dataListMMG");
setupModalHandler("dataModalUI", "dataListUI");
setupModalHandler("dataModalMMR", "dataListMMR");
setupModalHandler("dataModalMMRL", "dataListMMRL");

// เพิ่มฟังก์ชันค้นหาให้ทุก Modal
filterList("searchInputDataModal", "dataList");
filterList("searchInputMM", "dataListMM");
filterList("searchInputUU", "dataListUU");
filterList("searchInputMMG", "dataListMMG");
filterList("searchInputUI","dataListUI");
filterList("searchInputMMR","dataListMMR");
filterList("searchInputMMRL","dataListMMRL");

// ฟังก์ชันคำนวณราคาทั้งหมด
function calculateTotalPrice() {
  let grandTotal = 0; // Initialize grand total

  $("#list_order tbody tr").each(function () {
    const quantity = parseInt($(this).find("td").eq(5).text()) || 0; // จำนวนในแต่ละแถว
    const pricePerUnit = parseFloat($(this).find("td").eq(12).text()) || 0; // ราคา/หน่วย
    const totalPriceField = $(this).find("td").eq(13); // ช่องราคาทั้งหมด

    // คำนวณ: จำนวน * ราคา/หน่วย
    const totalPrice = quantity * pricePerUnit;

    // แสดงผลลัพธ์
    totalPriceField.text(totalPrice.toFixed(2)); // แสดงผลลัพธ์ที่มีทศนิยม 2 ตำแหน่ง

    // เพิ่มยอดรวมใน grand total
    grandTotal += totalPrice;
  });

  // อัปเดตผลรวมทั้งหมดใน input field
  $("#grand_total").val(grandTotal.toFixed(2)); // ใช้ .val() สำหรับ input field

  // คำนวณราคาพร้อม VAT
  calculateTotalWithVAT(grandTotal);
}

// Function to calculate total with VAT
function calculateTotalWithVAT(grandTotal) {
  const vatRate = parseFloat($("#default_vat_v").val()) || 0; // Get selected VAT rate
  const totalWithVAT = grandTotal + (grandTotal * vatRate) / 100; // Calculate total with VAT

  // Display total with VAT in the input field
  $("#grand_total_vat").val(totalWithVAT.toFixed(0)); // Display as a whole number
}

// Event listener for VAT selection
$("#default_vat_v").change(function () {
  const grandTotal = parseFloat($("#grand_total").val()) || 0; // Get the current grand total
  calculateTotalWithVAT(grandTotal); // Recalculate total with VAT
});

// Event listener for table edits
$("#list_order").on("input", 'td[contenteditable="true"]', calculateTotalPrice);

// Initial calculation
calculateTotalPrice();

$(document).ready(function () {
  addRow(1);
});

// ทำการแสดงใน input ที่กำหนด
$(document).ready(function () {
  // Handle checkbox change
  $(".delete-checkbox").change(function () {
    if ($(this).is(":checked")) {
      // ทำการดุงข้อมูลเมื่อมีการเลือก
      var row = $(this).closest("tr");

      // นำข้อมูลเข้ารายการ
      var material = row.find("td").eq(3).text();
      var shortText = row.find("td").eq(4).text();
      var materialGroup = row.find("td").eq(8).text();
      var quantity = row.find("td").eq(5).text();
      var delivery_date = row.find("td").eq(7).text().trim();
      var group_mm = row.find("td").eq(8).text();
      var purchasing_gurop = row.find("td").eq(11).text();

      // แสดงข้อมูลแต่ละรายการ
      $("#material").val(material);
      $("#shortText").val(shortText);
      $("#materialgroup").val(materialGroup);
      $("#quantity").val(quantity);
      $("#ordered-quantity").val(quantity);
      $("#delivery_date").val(delivery_date);
      $("#group_mm").val(group_mm);
      $("#purchasing_gurop").val(purchasing_gurop);
    } else {
      // ทำการล้างข้อมูล
      $("#material").val("");
      $("#shortText").val("");
      $("#materialgroup").val("");
      $("#quantity").val("");
      $("#ordered-quantity").val("");
      $("#delivery_date").val("");
      $("#group_mm").val("");
      $("#purchasing_gurop").val("");
    }
  });
});
