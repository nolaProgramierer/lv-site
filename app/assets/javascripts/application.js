// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(e) {
	$("#about-lv").click(function() {
    $('html, body').animate({
        scrollTop: $("#bio-lv").offset().top
    }, 2000);
    return false;
	}); // end click

  // $('.img-hover').hover(function() {
  //       $(this).addClass('img-zoom');
  //
  //   }, function() {
  //       $(this).removeClass('img-zoom');
  //   });// end hover
  
}); // end ready
