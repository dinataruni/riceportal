$(document).ready( function () {
  $('#quotes').dataTable( {
    "sDom": 'T<"clear">lfrtip',
    "oTableTools": {
      "sSwfPath": "swf/copy_csv_xls_pdf.swf"
    }
  } );
} );
