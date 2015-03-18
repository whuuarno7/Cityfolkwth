$(document).ready(function(){
	var value = $('#backgrounde').text();
	/*console.log(value);*/
	$('#julie').css('background', 'url('+value+')');
	
});

$(document).ready(function(){
	$( ".backgroundei" ).each(function(  ) {
		var value = $(this).text();
     $(this).parent(".pin").css('background-image', 'url('+value+')');
    });

$(document).ready(function(){
	var value = $('#backgroundpu').text();
	console.log(value);
	$('#background_row_pu').css('background', 'url('+value+')');
	
});
	
});



 
