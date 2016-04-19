$(document).ready(function() {
  $('#search-bar').on("keyup", function(event) {
    var $allLinks = $('.all-links');
    var searchTerm = this.value.toLowerCase();
    
    $allLinks.children().each(function (index, link) {
      var $link = $(link);
      var $linkTitle = $link.find('.link-title').text().toLowerCase();

      if ($linkTitle.indexOf(searchTerm) !== -1) {
        $link.show();
      } else {
        $link.hide();
      }
    });
  });
})
