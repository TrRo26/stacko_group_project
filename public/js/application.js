$(document).ready(function() {

  if((window.location.href).includes('/sessions/new')){
    $('#login-form').remove();
  }
  if((window.location.href).includes('/users/new')){
    $('#register-form').remove();
  }

  $("a#login-trigger").on('click', function(event) {
    event.preventDefault();
    $("img").hide();
    $("#login-form").slideToggle();
  });

  $('body').closest('input').on('submit', function(event){
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
      console.log(response);
      $("header").replaceWith(response);
    })
    .fail(function() {
      console.log("error");
    });
  });

/////////////////////////////////////////////////////////////////////////////

  $("#register-trigger").on('click', function(event) {
    event.preventDefault();

    $("#register-form").slideToggle();
    $("img").hide()
  });

  $('#register-form').on('submit', function(event){
    event.preventDefault();
    var $form = $('#register-form')
    var formData = $('#register-form').serialize();

    $.ajax({
      url: $form.attr("action"),
      type: $form.attr("method"),
      data: formData
    })
    .done(function(response) {
      $("#register-form").slideUp();
      $("header").replaceWith(response);
    })
    .fail(function() {
      console.log("error");
    });

  });
});
