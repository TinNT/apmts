function msgbox(msg, timer) {
  var el = $('#msgbox')
  
  el.find("h2").html(msg).end().slideDown('fast');
  
  setTimeout(function() {
    el.slideUp('fast');
  }, timer || 3000);
}