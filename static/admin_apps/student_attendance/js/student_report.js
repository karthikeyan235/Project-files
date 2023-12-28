
function handleExportSelection(name) {
  const selectElement = document.getElementById('exportDropdown');
  const selectedValue = selectElement.value;
  console.log(selectedValue)

  if (selectedValue === 'excel') {
    exportToExcel('myTable', name);
  } else if (selectedValue === 'csv') {
    exportToCSV('myTable', name);
  } else if (selectedValue === 'pdf') {
    exportToPDF('myTable', 6);
  }
}

function exportToExcel(tableId, name) {
  var data = getTableData(tableId);

  // Exclude the Actions column index
  var excludeColumnIndex = 6;

  // Exclude the Actions column from data rows
  data = data.map(function (row) {
    return row.filter(function (_, index) {
      return index !== excludeColumnIndex;
    });
  });

  var ws = XLSX.utils.aoa_to_sheet(data);
  var wb = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(wb, ws, 'Sheet1');
  var excelBuffer = XLSX.write(wb, { bookType: 'xlsx', type: 'array' });
  if (name == 'student') {
    var empid = document.getElementById('student_id').value;
    var filename = 'student_attendance_Report_' + empid + '.xlsx';
  }
  else if (name == 'teacher') {
    var empid = document.getElementById('teacher_id').value;
    var filename = 'teacher_attendance_Report_' + empid + '.xlsx';
  }
  else {
    var empid = document.getElementById('staff_id').value;
    var filename = 'staff_attendance_Report_' + empid + '.xlsx';
  }

  saveAsExcel(excelBuffer, filename);
}

function exportToCSV(tableId, name) {
  var csvData = getTableData(tableId);
  if (name == 'student') {
    var empid = document.getElementById('student_id').value;
    var filename = 'student_attendance_Report_' + empid + '.csv';
  }
  else if (name == 'teacher') {
    var empid = document.getElementById('teacher_id').value;
    var filename = 'teacher_attendance_Report_' + empid + '.csv';
  }
  else {
    var empid = document.getElementById('staff_id').value;
    var filename = 'staff_attendance_Report_' + empid + '.csv';
  }
  var csv = Papa.unparse(csvData);
  saveAsCSV(csv, filename);
}

function exportToPDF(tableId, excludeColumnIndex) {
  var data = getTableData(tableId);

  // Exclude the specified column index
  var filteredData = data.map(function (row) {
    return row.filter(function (_, index) {
      return index !== excludeColumnIndex;
    });
  });

  const element = document.getElementById(tableId);
  var opt = {
    margin: 0.1,
    filename: 'Attendance_Report_.pdf',
    image: { type: 'pdf', quality: 1 },
    html2canvas: { dpi: 196, letterRendering: true },
    jsPDF: {
      unit: 'in',
      format: 'a4',
      orientation: 'portrait',
      fontSize: 10
    }
  };

  // Create a new table element with the filtered data and copied styles
  var filteredTable = document.createElement('table');
  filteredTable.innerHTML = filteredData.map(function (row, rowIndex) {
    return '<tr>' + row.map(function (cellData, cellIndex) {
      var cellStyle = getComputedStyle(element.rows[rowIndex].cells[cellIndex]);
      var cellColor = cellStyle.backgroundColor;
      var cellFontColor = cellStyle.color;
      var cellStylesString = 'background-color: ' + cellColor + '; color: ' + cellFontColor + ';';
      return '<td style="' + cellStylesString + '">' + cellData + '</td>';
    }).join('') + '</tr>';
  }).join('');

  html2pdf().set(opt).from(filteredTable).save();
}




function getTableData(tableId) {
  var table = document.getElementById(tableId);
  var rows = table.getElementsByTagName('tr');
  var data = [];

  // Get the field names (header row)
  var headerRow = rows[0];
  var fieldNames = [];
  for (var j = 0; j < headerRow.cells.length; j++) {
    if (j !== 6) { // Exclude Actions column
      fieldNames.push(headerRow.cells[j].innerText.trim());
    }
  }
  data.push(fieldNames);

  // Get the table data rows
  for (var i = 1; i < rows.length; i++) {
    var row = rows[i];
    var rowData = [];

    for (var j = 0; j < row.cells.length; j++) {
      if (j !== 6) { // Exclude Actions column
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