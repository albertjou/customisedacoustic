$(document).ready(function() {
  $('#continue').click(function(event) {
    event.preventDefault();
    alert("Button was clicked");
    $('.meter').css('width', 40%);
  });


});


// Method to continue onto the next section for instrument
var create_guitar = function() {
  var step = $('.step').text();
  var body_color = $('#guitar-body-color').val();
  var nut_material = $('#nut-material').val();
  var nut_width = $('#nut-width').val();

$.ajax({
  url: '/guitars/new',
  type: 'get',
  dataType: 'json',
  data: {id: id, body_color: body_color, nut_material: nut_material, nut_width: nut_width}
})
.done(function() {
  console.log("success");
})
.fail(function() {
  console.log("error");
})
.always(function() {
  console.log("complete");
});

};

