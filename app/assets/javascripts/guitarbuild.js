$(document).ready(function() {
  $('#continue').click(function(event) {
    alert("Button was clicked");
    preventDefault();
    $('.meter').css('width', progressValue);
  });


});


// Method to continue onto the next section for instrument

