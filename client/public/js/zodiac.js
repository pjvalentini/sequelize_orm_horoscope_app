/* globals $ */

$(document).ready(function() {
  $.ajax({
    method: 'GET',
    url: '/zodiac'
  });
});
