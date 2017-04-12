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
//= require jquery_ujs
//= require autocomplete-rails
//= require_tree .

$(document).ready(function(){

  // Hides & Shows Print Order Form for Homepage
  $('.new-print-btn')
  .on('click', function() {
    // Show form
    $('.print-info')
      .addClass('hide');
    $('.new-print-btn')
      .addClass('hide');
    // Hide info & 'new' button
    $('.print-form')
      .removeClass('hide');
    $('.back-btn')
      .removeClass('hide');
  });


  $('.back-btn')
  .on('click', function() {
    // Hide form
    $('.print-form')
      .addClass('hide');
    $('.back-btn')
      .addClass('hide');
    // Show info & 'new' button
    $('.print-info')
      .removeClass('hide');
    $('.new-print-btn')
      .removeClass('hide');
  });


  // Handles Machine Database Search of Pin Index
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
