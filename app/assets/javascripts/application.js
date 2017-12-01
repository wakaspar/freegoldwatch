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
//= require jquery-ui
//= require jquery.turbolinks
//= require semantic-ui
//= require jquery_ujs
//= require autocomplete-rails
//= require_tree .

$(document).ready(function(){
  console.log('howdy');
  // HOME: Initializes dropdown menu for mobile.
  $('.ui.dropdown')
  .dropdown();

  // HOME: Enables smooth scrolling
  var headerHeight = $("header").height();
   $("#pins-link").click(function(){
      $path = $("#pins").offset().top - headerHeight + 1;
      $('html,body').animate({scrollTop:$path},"slow");
   });
   $("#prints-link").click(function(){
      $path=$("#prints").offset().top - headerHeight + 1;
      $('html,body').animate({scrollTop:$path},"slow");
   });
   $("#parties-link").click(function(){
      $path=$("#parties").offset().top - headerHeight + 1;
      $('html,body').animate({scrollTop:$path},"slow");
   });
   $("#social-link").click(function(){
    $path=$("#social").offset().top - headerHeight + 1;
    $('html,body').animate({scrollTop:$path},"slow");
   });
   $(".foot-link").click(function(){
    $path=$("#foot").offset().top - headerHeight + 1;
    $('html,body').animate({scrollTop:$path},"slow");
   });

  // HOME: Hides & Shows Print Order Form for Homepage
  $('.new-print-btn')
  .on('click', function() {
    // Show form
    $('.print-order-form')
      .css('display', 'block');
      // Hide info & 'new' button
    $('.new-print-btn')
      .css('display', 'none');
    $('.print-order-info')
      .css('display', 'none');
  });

  $('.back-btn')
  .on('click', function() {
    // Hide form
    $('.print-order-form')
      .css('display', 'none');
  //   // Show info & 'new' button
    $('.print-order-info')
      .css('display', 'block');
    $('.new-print-btn')
      .css('display', 'block');
  });

  // ADMIN: Handles Machine Database Search of Pin Index
  if ($('.pin-search').val() == '') {
    $('.database-machine').addClass('hide');
  }
  $('.pin-search').on('input', function() {
    var txt = $('.pin-search').val();
    $('.database-machine').each(function(){
      if($(this).text().toUpperCase().indexOf(txt.toUpperCase()) != -1){
          $(this).removeClass('hide');
      } else {
        $(this).addClass('hide');
      }
    });
  });
}) //closes document.ready
