$(document).ready(function() {
  var showActivityForm = function() {
    $('#fn-new-activity-form').show('fast');
    $('#activity_title').focus();

    return false;
  };

  $('#fn-add-activity').on('click', showActivityForm);
});
