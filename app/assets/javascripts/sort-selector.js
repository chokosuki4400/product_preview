$(function() {

  $('.c-form-pulldown--item').each(function() {

    $(document).on("change", "#large_category_id", function(){
      $.ajax({
        url:'/people/categories',
        type:'get',
        data: {
          large_category_id: $('#large_category_id').has('option:selected').val()
        }
      })
      // Ajaxリクエストが成功した時発動
      .done( (data) => {
      })
      // Ajaxリクエストが失敗した時発動
      .fail( (data) => {
      })
      console.log('after');
    });
  });

    var pNum = 1;

    $(document).on('click', '.c-btn--more a', function(){

      $('.c-form-pulldown--item--first').clone()
      .removeClass('class')
      .insertBefore('.c-btn--more')
      .find('#person_middle_category_ids').val();
      pNum++;
      return false;
  });
});
