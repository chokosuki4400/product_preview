 $(function(){
 	var overlaybtn = $('.p-overlay-btn'); 
 	overlaybtn.hide();

 	$(window).scroll(function () {
 		if ($(this).scrollTop() > 100) {
 			overlaybtn.fadeIn();
 		} else {
 			overlaybtn.fadeOut();
 		}
 	});
 });