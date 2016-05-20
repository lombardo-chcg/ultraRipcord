$(document).ready(function() {
  // grab form input from user
  $('#time-form').on('submit', function(event) {
    // event.preventDefault(event)
    minutes = $('#time-form input').val()
    minutes = Number(minutes)
    userInterval = (minutes * 60) * 1000
    $('#input-form').remove()
  });
});
