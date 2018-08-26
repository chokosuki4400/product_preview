$(function(){

	$(".c-accordion .accordion-title").click(function(){
		$(this).next(".list").slideToggle();
		$(this).toggleClass('is-close');
	}); 

});