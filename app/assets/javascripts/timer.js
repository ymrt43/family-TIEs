$(function(){
  $('.ms_timer').countdowntimer({
    displayFormat : "MS",
    minutes :1,
  });
  
  $('#timer_now').countdowntimer({
    displayFormat : "HMS",
    currentTime : true
  });
});
