$(function(){
  var list = document.getElementsByClassName("content-title");
  var list2 = document.getElementsByClassName("content-title--sub")
  var listContents = $(list).clone();
  var list2Contents = $(list2).clone();
  // var listDelete = $(list).remove();
  // var list2Delete = $(list2).remove();
  $("#favorite-post").on("click", function(){
    for (let i = 0; i < listContents.length; i = i + 1) {
      $(".my__main-post").append(listContents[i]);
    }
    list2Contents.remove();
  });

  $("#my-post").on("click", function(){
    for (let i = 0; i < list2Contents.length; i = i + 1) {
      $(".my__main-post").append(list2Contents[i]);
    }
    listContents.remove();
  });


});



