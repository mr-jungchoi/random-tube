$(document).ready(function() {
  $('#search').on('submit', function(event) {
    // event.preventDefault();
    var $form = $(this)
    var $player = $('#player');

    var request = $.ajax({
      url: $form.attr('action'),
      data: $form.serialize()
    });

    request.done(function(response) {
      $player.attr();
    })

  })

  $('#randomize').on('submit', function() {
    // event.preventDefault();

  })
});
