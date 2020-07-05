$(function(){
  $("#favorite-post").on("click", function(){
    var list = document.getElementsByClassName("content-title");
    for (let i = 0; i < list.length; i = i + 1) {
      $(".my__main-post2").append(list[i]);
    }
    console.log(list[0]);
    // $.ajax({
    //   type: "GET",
    //   url: "/show.json",
    //   data: {favor},
    //   dataType: "json"
    // })
    // .done(function(data){
    //   $(`<div class="favorite-post-wrapper__added">`).append(data);
    // })
    // .fail(function(){
    //   alert("error");
    // });
  });
});


