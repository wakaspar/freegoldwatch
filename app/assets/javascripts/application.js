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
    $('.back-btn')
      .addclass('hide');
  });

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


  // $('.pin-search').autocomplete({
  //   source: function(request, response) {
  //             debugger;
  //             $.ajax({
  //               url: 'http://pinballmap.com/api/v1/machines.json',
  //               dataType: 'json',
  //               data: {term: request.term},
  //               success: function(data) {
  //                 console.log('successjax')
  //                 console.log(data)
  //                  $('.pin-db').append(data)
  //                },
  //                error: function(data){
  //                  console.log('failjax')
  //                }
  //             })  //closes AJAX
  //   } //closes autocomplete callback
  // }) //closes autocomplete function

}) //closes document.ready
