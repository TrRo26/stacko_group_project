$(function(){
  $("body").on("submit", ".voteableform",function(e){
    e.preventDefault();
    console.log("FUUUUCK")
    var button = $(this).find(".votebutton")
    var id = $(this).find(".vid").attr("value")
    var type = $(this).find(".votabletype").attr("value")
    var voteable = {id: id, type: type}
      $.ajax({
        url: '/votes',
        method: "post",
        data: voteable,
        })
       .fail(function() {
      })
      .done(function(data) {
        $(button).replaceWith(  "<input class='votebutton' type='submit' value='" + data.count +" votes' style='color:" + data.button_color +"'>")
        });
  })

});

