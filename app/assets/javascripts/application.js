// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function droplets() {
// Number of drops in the screen
  ndrops = 1000;
// Width and Height of the screen
  wW = $(window).width();
  WH = $(window).height();
// Loop
  for (i = 0; i <= ndrops; i++) {
    // drop
    dp = "<li class='d" + i + "'></li>";
    // Random values for X, Y position
    dX = Math.floor((Math.random() * wW) + 1) + "px";
    dY = Math.floor((Math.random() * WH) + 1) + "px";
    // Random values for scale
    dS = Math.floor((Math.random()) + 1) * 0.3;
    // Random values for Opacity, Width and Height
    dO = (Math.floor((Math.random() * 2) + 1) * 0.5);
    dW = Math.floor((Math.random()*30)+30) + "px";
    dH = Math.floor((Math.random() * 20) + 18) + "px";
    // Append the drops
    $("ul").append(dp);
    // Apply the random values
    $(".d" + i).css("opacity", dO).css("width", dW).css("height", dH).css({"margin-left": dX, y: dY, scale: dS});
  }
}