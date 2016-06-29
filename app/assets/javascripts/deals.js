// $(document).ready(function () {
//   $('.editbtn').click(function () {
//       var currentTD = $(this).parents('tr').find('td');
//       if ($(this).html() == 'Edit') {
//           currentTD = $(this).parents('tr').find('td');
//           $.each(currentTD, function () {
//               $(this).prop('contenteditable', true)
//           });
//       } else {
//          $.each(currentTD, function () {
//               $(this).prop('contenteditable', false)
//           });
//       }
//       $(this).html($(this).html() == 'Edit' ? 'Update' : 'Edit')
//
//     var gist = JSON.stringify({
//     "city_name": $("#deal-name")
//   });
// //
// //
//   $.ajax({
//   type: "PATCH",
//   url: Routes.owner_deal_path(parseInt($("#deal_id"))),
//   data: gist,
//   success: function(data) {
//     console.log("Successfully created gist at " + data.html_url);
//   }
// });
// });
//
//   // //for Date functionality of the deal
//   //         $('input[name="datefilter"]').daterangepicker({
//   //     autoUpdateInput: false,
//   //     locale: {
//   //         cancelLabel: 'Clear'
//   //     }
//   // });
// });


$(document).ready(function() {
        var modal=$('#editOffer');
        $('#edit_deal_link').click(function(e) {
          var edit_url = $(this).attr('href');
          modal.load(edit_url + ' #content',function(){
            modal.dialog("open");
          });
        });
        modal.dialog({ autoOpen: false, title: "Your title", draggable: true,
        resizable: false, modal: true, width:'auto'});

});
