/*Export Table Init*/

"use strict"; 

$(document).ready(function() {
	$('#example').DataTable( {
		dom: 'Bfrtip',
		buttons: [
			'Copy', 'Csv', 'Excel', 'Pdf', 'Print'
		]
	} );
} );