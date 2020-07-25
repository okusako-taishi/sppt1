$(function(){
  var list = document.getElementsByClassName("favorite--post");
  var list2 = document.getElementsByClassName("my--post");
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


