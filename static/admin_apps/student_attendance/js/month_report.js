function handleExportSelection(page) {
  const selectElement = document.getElementById('exportDropdown');
  const selectedValue = selectElement.value;

  if (selectedValue === 'excel') {
    exportToExcel('myTable', page);
  } else if (selectedValue === 'csv') {
    exportToCSV('myTable', page);
  } else if (selectedValue === 'pdf') {
    exportToPDF('myTable', 36);
  }
}

function exportToExcel(tableId, page) {
  var filteredData = getFilteredTableData(tableId);

  var ws = XLSX.utils.aoa_to_sheet(filteredData);
  var wb = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(wb, ws, 'Sheet1');
  var excelBuffer = XLSX.write(wb, { bookType: 'xlsx', type: 'array' });
  var selectedMonth = document.getElementById('id_month').value;
  if (page === "student") {
    var filename = 'student_monthreport_' + selectedMonth;
  }
  else if (page === "teacher") {
    var filename = 'teacher_monthreport_' + selectedMonth;
  }
  else if (page === "staff") {
    var filename = 'staff_monthreport_' + selectedMonth;
  }
  filename += '.xlsx';
  saveAsExcel(excelBuffer, filename);
}

function exportToCSV(tableId, page) {
  var filteredData = getFilteredTableData(tableId);
  var selectedMonth = document.getElementById('id_month').value;
  if (page === "student") {
    var filename = 'student_monthreport_' + selectedMonth;
  }
  else if (page === "teacher") {
    var filename = 'teacher_monthreport_' + selectedMonth;
  }
  else if (page === "staff") {
    var filename = 'staff_monthreport_' + selectedMonth;
  }
  filename += '.csv';

  var csv = Papa.unparse(filteredData);
  saveAsCSV(csv, filename);
}

function getFilteredTableData(tableId, selectedDepartment) {
  var table = document.getElementById(tableId);
  var rows = table.getElementsByTagName('tr');
  var data = [];

  // Get the field names (header row)
  var headerRow = rows[0];
  var fieldNames = [];
  for (var j = 0; j < headerRow.cells.length; j++) {
    if (j !== 36) { // Exclude Actions column
      fieldNames.push(headerRow.cells[j].innerText.trim());
    }
  }
  data.push(fieldNames);

  // Get the table data rows
  for (var i = 1; i < rows.length; i++) {
    var row = rows[i];
    var departmentCell = row.cells[3];

    if (departmentCell) {
      var departmentText = departmentCell.textContent.toLowerCase();

      if (!selectedDepartment || departmentText === selectedDepartment) {
        var rowData = [];

        for (var j = 0; j < row.cells.length; j++) {
          if (j !== 36) { // Exclude Actions column
            rowData.push(row.cells[j].innerText.trim());
          }
        }

        data.push(rowData);
      }
    }
  }

  return data;
}

function saveAsExcel(buffer, filename) {
  var blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
  saveAs(blob, filename);
}

function saveAsCSV(csv, filename) {
  var blob = new Blob([csv], { type: 'text/csv;charset=utf-8;' });
  saveAs(blob, filename);
}

function saveAs(blob, filename) {
  var link = document.createElement('a');
  link.href = window.URL.createObjectURL(blob);
  link.download = filename;
  link.click();
}


function myFunction() {
  var input, filter, table, tr, td, td1, i, txtValue, txtValue1;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  var noResults = document.getElementById("noResults");
  var matchesFound = false;

  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    td1 = tr[i].getElementsByTagName("td")[2];
    if (td || td1) {
      txtValue = td ? td.textContent || td.innerText : "";
      txtValue1 = td1 ? td1.textContent || td1.innerText : "";
      if (txtValue.toUpperCase().indexOf(filter) > -1 || txtValue1.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
        matchesFound = true;
      } else {
        tr[i].style.display = "none";
      }
    }
  }

  if (matchesFound) {
    noResults.style.display = "none";
  } else {
    noResults.style.display = "block";
  }
}
