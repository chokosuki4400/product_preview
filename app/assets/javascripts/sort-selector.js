$(function() {

  $('.c-form-pulldown--item').each(function() {
  //
  //   $object = $(this).find('.large_category--item').attr('id');
  //   console.log($object);
  //
  //   $(document).on('change', '#'+$object, function(){
  //     $.ajax({
  //       url:'/people/categories',
  //       type:'get',
  //       // dataType: 'json',
  //       data: {
  //         object: $object,
  //         large_category_id: $('#'+$object).has('option:selected').val()
  //       }
  //     })
  //     // Ajaxリクエストが成功した時発動
  //     .done( (data) => {
  //       console.log(data);
  //       console.log('成功');
  //     })
  //     // Ajaxリクエストが失敗した時発動
  //     .fail( (data) => {
  //       console.log('失敗');
  //     })
  //     console.log('after');
  //   });
  // });

    var pNum = 1;

    $(document).on('click', '.c-btn--more a', function(){

      // $('.c-form-pulldown--large_category').clone()
      // .removeClass('c-form-pulldown--large_category')
      // .insertBefore('.c-btn--more')
      // .find('#large_category_id')
      // .removeAttr('id')
      // .attr('id', 'large_category_id_'+ pNum)
      // .val();
      //
      // $('.c-form-pulldown--middle_category').clone()
      // .removeClass('c-form-pulldown--middle_category')
      // .insertBefore('.c-btn--more')
      // .find('#middle_category_id')
      // .removeAttr('id')
      // .attr('id', 'middle_category_id_'+ pNum)
      // .val();

      // $('#large_category_id').clone()
      // .removeAttr('id')
      // .attr('id', 'large_category_id'+ pNum)
      // .insertBefore('.c-btn--more')
      // .find('#large_category_id'+ pNum).val();
      //
      // $('#middle_category_id').clone()
      // .removeAttr('id')
      // .attr('id', 'middle_category_id'+ pNum)
      // .insertBefore('.c-btn--more')
      // .find('#person_middle_category_ids'+ pNum).val();

      pNum++;
      return false;
  });
});
