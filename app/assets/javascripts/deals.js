$(document).ready(function () {
  $('.editbtn').click(function () {
      var currentTD = $(this).parents('tr').find('td');
      if ($(this).html() == 'Edit') {
          currentTD = $(this).parents('tr').find('td');
          $.each(currentTD, function () {
              $(this).prop('contenteditable', true)
          });
      } else {
         $.each(currentTD, function () {
              $(this).prop('contenteditable', false)
          });
      }
      $(this).html($(this).html() == 'Edit' ? 'Update' : 'Edit')

    var gist = JSON.stringify({
    "city_name": $("#deal-name")
  });
//
//
  $.ajax({
  type: "PATCH",
  url: Routes.owner_deal_path(parseInt($("#deal_id"))),
  data: gist,
  success: function(data) {
    console.log("Successfully created gist at " + data.html_url);
  }
});
});

  // //for Date functionality of the deal
  //         $('input[name="datefilter"]').daterangepicker({
  //     autoUpdateInput: false,
  //     locale: {
  //         cancelLabel: 'Clear'
  //     }
  // });
});
