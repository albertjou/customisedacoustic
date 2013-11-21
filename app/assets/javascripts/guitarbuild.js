$(document).ready(function() {
  $('#continue').click(function(event) {
    var $current = $('.current');
    event.preventDefault();
    step_forward($current);
    update_table($current);
    update_progress();
  });

  $('#save').click(function(event) {
    // First check if session
    // Then add to database
    // Add status
  });

});
// Update the progress bar
var update_progress = function() {
  var multiplier = 20 * parseInt($('.complete').length);
  // var barWidth = parseInt($('.progress').width());
  // var newWidth = multiplier * (barWidth/5);
  var widthPercent = multiplier.toString()
  $('.meter').css('width', widthPercent + "%");
}


// Hide the current shop and move onto the next one
var step_forward = function($current) {
  var nextOne = $current.next();
  $current.addClass('invisible complete');
  nextOne.addClass('current');
  nextOne.removeClass('invisible incomplete')
  $current.removeClass('current');
  $('.orbit-container').foundation('reflow');
};

// Add selection to table upon click
var update_table = function($current) {
  // Check which one is active
  if ($current.hasClass('guitar-shop')) {
    var color = $('#guitar-body-color').val();
    populate_table("Body color: " + color, "N/A").prependTo('tbody');
    var nut_material = $('#nut-material').val();
    populate_table("Nut material: " + nut_material, "N/A").prependTo('tbody');
    var nut_width = $('#nut-width').val();
    populate_table("Nut width: " + nut_width, "N/A").prependTo('tbody');
  } else {
    var item = $current.find('.active .product-name').data('name');
    var price = parseInt($current.find('.active .product-price').data('price'));
    populate_table(item, price).prependTo('tbody');
  }


};

// Creates the table html
var populate_table = function(item, price) {
  var $item = $('<td>').text(item);
  var $price = $('<td>').text(price);
  var newRow = $('<tr>');
  newRow = newRow.append($item, $price);
  return newRow;
};


// Method to continue onto the next section for instrument
var create_guitar = function() {
  var step = $('.step').text();
  var body_color = $('#guitar-body-color').val();
  var nut_material = $('#nut-material').val();
  var nut_width = $('#nut-width').val();
  var body_shape = parseInt($('.active .body_id').text().replace(/"/g, ''));
  var fretboard = parseInt($('.active .fretboard_id').text().replace(/"/g, ''));
  var bridge = parseInt($('.active .bridge_id').text().replace(/"/g, ''));
  var guitar_string = parseInt($('.active .guitar_string_id').text().replace(/"/g, ''));

$.ajax({
  url: '/guitars/new',
  type: 'get',
  dataType: 'json',
  data: {id: id, body_color: body_color, nut_material: nut_material, nut_width: nut_width, body_shape: body_shape, fretboard: fretboard, bridge: bridge, guitar_string: guitar_string}
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

