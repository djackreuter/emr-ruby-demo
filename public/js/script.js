function validateForm() {
  var email = document.forms['sendEmail']['email'].value
  var subject = document.forms['sendEmail']['subject'].value
  var message = document.forms['sendEmail']['message'].value

  if (email == '' || subject == '' || message == '') {
    alert('Please fill out all the fields');
    return false;
  }
}

$(function() {
  $('#show-list').click(function() {
    $.post({
      dataType: 'json',
      url: 'http://localhost:4567/ajax',
      success: function(result) {
        $('#list').html(result);
      }
    });
  });
});