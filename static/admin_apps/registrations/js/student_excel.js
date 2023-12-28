


///////////////////////this is for dummy excel to fill////////////////////////////
function generateExcel() {
  // Define the fields
  const fields = [
    'Name',
    'Student ID',
    'Roll No',
    'Tag ID',
    'DOB',
    'Address',
    'Gender',
    'Parent Name 1',
    'Parent Relation 1',
    'Parent Name 2',
    'Parent Relation 2',
    'Mobile No',
    'Email',
    'Class Name',
    'Section',
    'Date of Joining',
    'Route Number',
    'Stop Number',
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
  saveExcelFile(excelBuffer, 'Registration_format.xlsx');
}