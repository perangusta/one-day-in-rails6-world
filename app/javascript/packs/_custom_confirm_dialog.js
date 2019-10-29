import Rails from "@rails/ujs";

Rails.confirm = function(message, element) {
  let dialog        = document.getElementById('custom-confirm-dialog');
  let cancel_button = dialog.querySelector('[data-is="cancel-button"]');
  let ok_button     = dialog.querySelector('[data-is="ok-button"]');
  let message_box   = dialog.querySelector('[data-is="message"]');

  let ok_function = function(event) {
    event.preventDefault();
    dialog.style.display = 'none';

    let old = Rails.confirm;
    Rails.confirm = function() { return true };
    element.click();
    Rails.confirm = old;
  };

  let cancel_function = function(event) {
    event.preventDefault();
    dialog.style.display = 'none';
  };

  cancel_button.addEventListener('click', cancel_function);
  ok_button.addEventListener('click', ok_function);

  message_box.innerHTML = message;
  dialog.style.display = 'block';
  return false;
};
