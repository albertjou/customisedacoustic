$(document).ready(function() {
  $('#continue').click(function(event) {
    if ($('.complete').length === 5 ) {
      console.log("This is the final step")
    } else {
      var $current = $('.current');
      step_forward($current);
      update_table($current);
      update_progress();
    }
    event.preventDefault();
  });

  $('#save').click(function(event) {
    create_guitar();
    // Add status
  });

  $('.progress-overlay a').on('click', function(event){
    var targetDisplay = $(this).data('section');
    targetDisplay = "." + targetDisplay;
    $('.current').addClass('incomplete invisible').removeClass('current');
    $(targetDisplay).addClass('current').removeClass('invisible');
    $('.orbit-container').foundation('reflow');
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
    var nextOne = $('.incomplete').first();
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
  var body_shape_id = parseInt($('.active .body_id').text().replace(/"/g, ''));
  var fretboard_id = parseInt($('.active .fretboard_id').text().replace(/"/g, ''));
  var bridge_id = parseInt($('.active .bridge_id').text().replace(/"/g, ''));
  var guitar_string_id = parseInt($('.active .guitar_string_id').text().replace(/"/g, ''));

$.ajax({
  url: '/guitars',
  type: 'post',
  dataType: 'json',
  data: {guitar:
  {body_color: body_color, nut_material: nut_material, nut_width: nut_width, body_shape_id: body_shape_id, fretboard_id: fretboard_id, bridge_id: bridge_id, guitar_string_id: guitar_string_id}}
})
.done(function() {
  alert("Great, it's been saved");
})
.fail(function() {
  console.log("error");
})

};

