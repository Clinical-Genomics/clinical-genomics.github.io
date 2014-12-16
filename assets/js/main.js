$(document).ready(function() {

  // Toggle sidebar button on smaller screen sizes
  $('.cg-sidebar-toogle').click(function() {
    $('.cg-sidebar').toggleClass('is-visible');
    $(this).toggleClass('toggle-on');
  });
});
