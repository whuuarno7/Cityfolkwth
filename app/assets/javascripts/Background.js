$(document).ready(function(){
	var value = $('#backgrounde').text();
	/*console.log(value);*/
	$('#julie').css('background', 'url('+value+')');
	
});

$(document).ready(function(){
	$( ".backgroundei" ).each(function(  ) {
		var value = $(this).text();
     $(this).parent(".background_imagediv").css('background-image', 'url('+value+')');
    });


	
});



 
