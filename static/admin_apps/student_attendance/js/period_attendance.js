function handleExportSelection() {
  const selectElement = document.getElementById('exportDropdown');
  const selectedValue = selectElement.value;

  if (selectedValue === 'excel') {
    exportToExcel('myTable');
  } else if (selectedValue === 'csv') {
    exportToCSV('myTable');
  }
}

function exportToExcel(tableId) {
  var filteredData = getFilteredTableData(tableId);
  var selectedMonth = document.getElementById('id_date').value;
  var ws = XLSX.utils.aoa_to_sheet(filteredData);
  var wb = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(wb, ws, 'Sheet1');
  var excelBuffer = XLSX.write(wb, { bookType: 'xlsx', type: 'array' });

  var filename = 'student_period_attendance_' + selectedMonth;
  filename += '.xlsx';
  saveAsExcel(excelBuffer, filename);
}

function exportToCSV(tableId, page) {
  var filteredData = getFilteredTableData(tableId);
  var selectedMonth = document.getElementById('id_date').value;

  var filename = 'student_period_attendance_' + selectedMonth;
  filename += '.csv';

  var csv = Papa.unparse(filteredData);
  saveAsCSV(csv, filename);
}

function getFilteredTableData(tableId) {
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
    var rowData = [];

    for (var j = 0; j < row.cells.length; j++) {
      if (j !== 36) { // Exclude Actions column
        rowData.push(row.cells[j].innerText.trim());
      }
    }
    data.push(rowData);
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


