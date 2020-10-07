/**
 * 
 */

$(document).scroll(function(){

	var con = $("#remoCon");

	var position = $(window).scrollTop();

	

	if(position > 250){ con.fadeIn(500); }

	else if(position < 250){ con.fadeOut(500); }

 });



 $("#remoCon").click(function(){

	$("html, body").animate({scrollTop: 0}, 1000);

 });


