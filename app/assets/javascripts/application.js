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
//= require bootstrap
//= require_tree .

$(document).on('turbolinks:load', function(e){
// $(document).ready(function(e) {
	$("#about-lv").click(function() {
    $('html, body').animate({
        scrollTop: $("#bio-lv").offset().top
    }, 1500);
    return false;
	}); // end click

  $("#images-lv").click(function() {
    $('html, body').animate({
        scrollTop: $("#img-gallery1").offset().top
    }, 2000);
    return false;
	}); // end click

	$("#contact-lv").click(function() {
    $('html, body').animate({
        scrollTop: $("#footer-row").offset().top
    }, 3000);
    return false;
	}); // end click

	$("#footer-to-top").click(function() {
    $('html, body').animate({
        scrollTop: 0
    }, 2500);
    return false;
	}); // end click

	$("#footer-to-bio").click(function() {
    $('html, body').animate({
			scrollTop: $("#bio-lv").offset().top
		}, 2000);
		return false;
	}); // end click

	$("#footer-to-images").click(function() {
    $('html, body').animate({
			scrollTop: $(".line-divider").offset().top
		}, 2000);
		return false;
	}); // end click



	// fade out for flash message on contact form send
	// setTimeout(function(){
  //   $('.alert').fadeOut();
	// }, 4000, 'slow');

}); // end ready
