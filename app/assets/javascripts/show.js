$(function(){
  var list = document.getElementsByClassName("content-title");
  var list2 = document.getElementsByClassName("content-title--sub");
  $(list).hide();
  $(list2).hide();
  $("#favorite-post").on("click", function(){
    $(list).show();
    $(list2).hide();
  });

  $("#my-post").on("click", function(){
    $(list2).show();
    $(list).hide();
  });
});


