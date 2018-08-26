$(function($) {
  WindowHeight = $(window).height();
  $('.c-navigation').css('height', WindowHeight);

  $('.c-hamburger').click(function(){
    $(this).toggleClass('js-open');
    $(this).next().toggleClass('js-open');

    $('.c-overlay').show();

  });

  $(document).click(function(event) {
    if (!$(event.target).closest('.p-navigation').length) {
      $('.c-hamburger').removeClass('js-open');
      $('.c-navigation').removeClass('js-open');
      $('.c-overlay').hide();
    }
  });
  
});