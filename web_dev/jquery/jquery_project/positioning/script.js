$(document).ready(function() {
  
  $('#octopus').click(function() {
  $('#octopus').css({fill: "#ff0000"});
  $('h1').html('<p>what if i clicked you?</p>')
  $('h1').fadeOut('slow');
  $('#octopus').fadeOut('slow');
  });

  $('#hat, #glasses').draggable();
});