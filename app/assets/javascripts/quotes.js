$(document).ready( function () {
  $('#quotes').dataTable( {
     "sDom": "<'row-fluid'<'span6'T><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
    "oTableTools": {
      "sSwfPath": "copy_csv_xls_pdf.swf",
      "aButtons": [
        "copy",
        "print",
        {
          "sExtends":    "collection",
          "sButtonText": 'Save <span class="caret" />',
          "aButtons":    [ "csv", "xls", "pdf" ]
          
        }
      ]
    }
  } );
} );

$.extend( true, $.fn.DataTable.TableTools.classes, {
  "container": "btn-group",
  "buttons": {
    "normal": "btn",
    "disabled": "btn disabled"
  },
  "collection": {
    "container": "DTTT_dropdown dropdown-menu",
    "buttons": {
      "normal": "",
      "disabled": "disabled"
    }
  }
} );

// Have the collection use a bootstrap compatible dropdown
$.extend( true, $.fn.DataTable.TableTools.DEFAULTS.oTags, {
  "collection": {
    "container": "ul",
    "button": "li",
    "liner": "a"
  }
} );
