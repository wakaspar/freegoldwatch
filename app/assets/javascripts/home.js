$(document).ready(function(){
  console.log('howdy');
  // HOME: Initializes dropdown menu for mobile.
  $('.ui.dropdown').on('click', function(){
    $('.ui.dropdown').dropdown();

  });

  // HOME: Enables smooth scrolling
  var headerHeight = $("header").height();
   $("#pins-link").click(function(){
      $path = $("#pins").offset().top - headerHeight + 1;

      $('body').animate({scrollTop:$path},"slow");
      console.log('working');
   });
   $("#prints-link").click(function(){
      $path=$("#prints").offset().top - headerHeight + 1;
      $('body').animate({scrollTop:$path},"slow");
      console.log('working');
   });
   $("#parties-link").click(function(){
      $path=$("#parties").offset().top - headerHeight + 1;
      $('body').animate({scrollTop:$path},"slow");
      console.log('working');
   });
   $("#social-link").click(function(){
    $path=$("#social").offset().top - headerHeight + 1;
    $('body').animate({scrollTop:$path},"slow");
    console.log('working');
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
});
