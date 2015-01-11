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
//= require bootstrap
//= require bootstrap-sprockets
$(document).ready(function(){
  $(".btn-twitch").click(function(){
    $(".stream-bin").toggle();
    return false;
  });

  $('body').scrollspy({
    target: '.navbar-fixed-top'
  });

    var toggleImage = function(){
      if ($("header").hasClass("kill1")){
        $("header").removeClass("kill1").addClass("kill2")
      }
      else if($("header").hasClass("kill2")) {
        $("header").removeClass("kill2").addClass("kill3")
      }
      else if($("header").hasClass("kill3")) {
        $("header").removeClass("kill3").addClass("kill1")
      }

    }

    setInterval(toggleImage, 7000);

  });
