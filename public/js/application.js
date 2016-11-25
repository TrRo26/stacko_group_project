$(document).ready(function() {
  $("a#login-trigger").on('click', function(event) {
    event.preventDefault();

    $("#login-form").slideToggle();
  });

  $('#login-form').find('input[type=submit]').on('click', function(event){
    event.preventDefault();
    var $form = $('#login-form')
    var formData = $('#login-form').serialize();
    $.ajax({
      url: $form.attr("action"),
      type: $form.attr("method"),
      data: formData
    })
    .done(function(response) {
      $("#login-form").slideUp();
    })
    .fail(function() {
      console.log("error");
    });
  });
});
