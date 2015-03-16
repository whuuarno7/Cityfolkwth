$(document).ready(function(){
	var value = $('.backgroundei').text();
	console.log(value);
	$('.imagen').css('background', 'url('+value+')');
	

});
