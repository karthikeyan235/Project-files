function handleExportSelection(page, col) {
  const selectElement = document.getElementById('exportDropdown');
  const selectedValue = selectElement.value;

  if (selectedValue === 'excel') {
    exportToExcel('myTable', page, col);
  } else if (selectedValue === 'csv') {
    exportToCSV('myTable', page, col);
  }
}

function exportToExcel(tableId, page, col) {
  var filteredData = getFilteredTableData(tableId, col);

  var ws = XLSX.utils.aoa_to_sheet(filteredData);
  var wb = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(wb, ws, 'Sheet1');
  var excelBuffer = XLSX.write(wb, { bookType: 'xlsx', type: 'array' });
  if (page === 'student') {
    var filename = 'students_list.xlsx';
  } else if (page === 'teacher') {
    var filename = 'teacher_list.xlsx';
  } else if (page === 'staff') {
    var filename = 'staff_list.xlsx';
  } else if (page === 'timetable') {
    var filename = 'timetable_details.xlsx';
  } else if (page === 'gatereader') {
    var filename = 'gatereaders_list.xlsx';
  } else if (page === 'classsection') {
    var filename = 'class_sections_list.xlsx';
  } else if (page === 'holiday') {
    var filename = 'holiday_list.xlsx';
  }
  saveAsExcel(excelBuffer, filename);
}

function exportToCSV(tableId, page, col) {
  var filteredData = getFilteredTableData(tableId, col);
  if (page === 'student') {
    var filename = 'students_list.csv';
  } else if (page === 'teacher') {
    var filename = 'teacher_list.csv';
  } else if (page === 'staff') {
    var filename = 'staff_list.csv';
  } else if (page === 'timetable') {
    var filename = 'timetable_details.csv';
  } else if (page === 'gatereader') {
    var filename = 'gatereaders_list.csv';
  } else if (page === 'classsection') {
    var filename = 'class_sections_list.csv';
  } else if (page === 'holiday') {
    var filename = 'holiday_list.csv';
  }
  var csv = Papa.unparse(filteredData);
  saveAsCSV(csv, filename);
}

function getFilteredTableData(tableId, col) {
  var table = document.getElementById(tableId);
  var rows = table.getElementsByTagName('tr');
  var data = [];

  // Get the field names (header row)
  var headerRow = rows[0];
  var fieldNames = [];
  for (var j = 0; j < headerRow.cells.length; j++) {
    if (j !== col) { // Exclude Actions column
      fieldNames.push(headerRow.cells[j].innerText.trim());
    }
  }
  data.push(fieldNames);

  // Get the table data rows
  for (var i = 1; i < rows.length; i++) {
    var row = rows[i];
    var rowData = [];

    for (var j = 0; j < row.cells.length; j++) {
      if (j !== col) { // Exclude Actions column
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



///////////////////////////////funtion for search//////////////////////////////////////



function myFunction(a, b) {
  var input, filter, table, tr, td, td1, i, txtValue, txtValue1;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  var noResults = document.getElementById("noResults");
  var matchesFound = false;

  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[a];
    td1 = tr[i].getElementsByTagName("td")[b];
    if (td) {
      txtValue = td.textContent || td.innerText;
      txtValue1 = td1.textContent || td1.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
        matchesFound = true;
      }
      else if (txtValue1.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
        matchesFound = true;
      }
      else {
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
