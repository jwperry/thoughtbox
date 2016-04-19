$(document).ready(function() {
  $('.read-button').on("click", function() {
    var $link = $('.link-url', $(this).parent());
    changeToRead.call(this, $link);
    var linkId = $(this).parent().data("link-id");

    $.ajax({
      method: "PATCH",
      url: "/links/" + linkId,
      data: { link_id: linkId }
    })
  });

  $('.unread-button').on("click", function() {
    var $link = $('.link-url', $(this).parent());
    changeToUnread.call(this, $link);
    var linkId = $(this).parent().data("link-id");

    $.ajax({
      method: "PATCH",
      url: "/links/" + linkId,
      data: { link_id: linkId }
    })
  });
});

function changeToRead(link) {
  var className = link.attr('class').replace('unread-link-url', 'read-link-url');
  link.attr('class', className);
  $(this).addClass('hidden');
  $(this).siblings('.unread-button').removeClass('hidden');
}

function changeToUnread(link) {
  var className = link.attr('class').replace('read-link-url', 'unread-link-url');
  link.attr('class', className);
  $(this).addClass('hidden');
  $(this).siblings('.read-button').removeClass('hidden');
}