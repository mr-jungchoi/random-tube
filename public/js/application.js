$(document).ready(function() {
  $('#randomize').on('submit', function(event) {
    event.preventDefault();
    var $form = $(this).closest('form')
    var $player = $('#player');

    var request = $.ajax({
      url: $form.attr('action'),
      data: $form.serialize()
    });

    request.done(function(response) {
      $player.attr('src', "https://www.youtube.com/embed/"+response);
    })
  })
});
