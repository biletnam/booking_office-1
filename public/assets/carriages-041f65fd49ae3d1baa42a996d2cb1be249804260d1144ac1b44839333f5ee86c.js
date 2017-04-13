function hide_all() {
   var types = document.querySelectorAll(".type");
   $.each(types, function(index, value) {
      $(value).hide();
   });
};

$(document).ready(function() {
   
   hide_all();
   $('.' + $("#carriage_type").val()).show();
   $("#carriage_type").change(function() {
      hide_all();
      $('.' + $(this).val()).show();
   });
});
