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
//= require jquery.turbolinks
//= require jquery_ujs
//= require autocomplete-rails
//= require_tree .


// Hides & Shows Print Order Form for Homepage
$(document).ready(function(){
  $('.new-print-btn')
  .on('click', function() {
    $('.print-info')
      .addClass('hide');
    $('.print-form')
      .removeClass('hide');
  });

  $('.back-btn')
  .on('click', function() {
    $('.print-form')
      .addClass('hide');
    $('.print-info')
      .removeClass('hide');
  });

});

// 
// var pinDb = function(){
//   $.ajax({
//     method: "GET",
//     url: "http://pinballmap.com/api/v1/machines.json",
//     data: $('.pin-search').serialize(),
//     success: onSuccess,
//     error: onError
//   })
// )};
//
// var onSuccess = function(res){
//   console.log('good job, ajax');
// }
//
// var onError = function(res){
//   console.log('failjax');
// }
