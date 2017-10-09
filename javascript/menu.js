$(function(){
  $('#btn_tool').on('click', function(){
      var item1 = $('.menu_contents > .item1');
      var item2 = $('.menu_contents > .item2');
      if(item1.is(":hidden"))
      {
        item1.show('fast');
        item2.hide();
      }
      else {
        item1.hide();
        item2.show('fast');
      }
  });
});
