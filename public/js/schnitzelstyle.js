$(document).ready(function() {
  $('a[data-alert]').click(function(e) {
    e.preventDefault();
    alert($(this).data('alert'));
  });
});
