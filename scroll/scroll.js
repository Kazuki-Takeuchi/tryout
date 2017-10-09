var nowPosition=$(window).scrollTop();
var speed = 300;
var scrollDistance = 200;

var hideUpButton = function(){
  if(nowPosition < scrollDistance - 25)
  {
    $('#up').hide();
    $('#down').css('margin-top',nowPosition+125);
  }
};
var hideDownButton = function(){
  if(nowPosition + scrollDistance > window.parent.screen.height)
  {
    $('#down').hide();
  }
};
var scrollFunc = function(position){
  $("html, pre").animate({scrollTop:position}, speed, "swing");
  nowPosition = position;
  $('#up').css('margin-top',nowPosition+100);
};

$(function()
{
  nowPosition=$(window).scrollTop();
  $('#up').css('margin-top',nowPosition+100);
  hideUpButton();
  hideDownButton();
});

$(function(){
  $('#up').on('click', function(){
    var position = nowPosition-scrollDistance;
    scrollFunc(position);

    hideUpButton();
    if($('#down').is(":hidden"))
    {
      $('#down').show();
    }
    return false;
  });

  $('#down').on('click', function(){
    var position = nowPosition+scrollDistance;
    scrollFunc(position);

    hideDownButton();
    if($('#up').is(":hidden"))
    {
      $('#down').css('margin-top',0);
      $('#up').show();
    }
    return false;
  });
});
