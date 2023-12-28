


///////////////////////this is for dummy excel to fill////////////////////////////
function generateExcel() {
  // Define the fields
  const fields = [
    'Name',
    'Teacher ID',
    'Tag ID',
    'Email',
    'Mobile No',
    'Gender'
  ];

  // Create an empty worksheet
  const worksheet = XLSX.utils.aoa_to_sheet([fields]);

  // Create an empty workbook and add the worksheet to it
  const workbook = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(workbook, worksheet, 'Sheet1');

  // Generate the Excel file
  const excelBuffer = XLSX.write(workbook, { type: 'buffer', bookType: 'xlsx' });

  // Save the Excel file
  function saveExcelFile(buffer, filename) {
    const blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
    const url = URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = filename;
    link.click();
  }

  // Trigger the download
  saveExcelFile(excelBuffer, 'empty_data.xlsx');
}