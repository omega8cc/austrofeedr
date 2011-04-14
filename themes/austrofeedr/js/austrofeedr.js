/*

function autoupdate() {
  $.ajax(
  {
    type: "POST",
    url: "blockupdate/update",
    cache: false,
    success: function(data) {
      var result = Drupal.parseJson(data);
      $("div.autorefresh").fadeIn("slow").html(result['html']); 
    }
  });
}

//if( Drupal.jsEnabled ) {
  $(document).ready(function() {
    setInterval("autoupdate()", 5 * 60000);
  });
//}

*/