$( document ).ready(function() {
  var player = videojs('beauty_video');
  player.requestFullScreen();
  var aspectRatio = 9/16; // Make up an aspect ratio

  function resizeVideoJS(player, aspectRatio){
    var width = player.a.parentElement.offsetWidth;
    // Set width to fill parent element, Set height
    player.width(width).height( width * aspectRatio );
  }
  resizeVideoJS(player, aspectRatio); // Initialize the function
  window.onresize = resizeVideoJS; // Call the function on resize
  player.on("ended", function(){ window.location = "/message"; }, false);
});
