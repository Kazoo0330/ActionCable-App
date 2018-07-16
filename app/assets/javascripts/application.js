//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require_tree .


function postChatMessage() {
  event.preventDefault();
  var element = document.querySelector('input[type="text"]');
  App.chat_room.speak(element.value);
  element.value = '';
}


// var
//   timer = 2000,
//   ui = document.getElementById('ui');

// setInterval(function() {
//   ui.classList.toggle("switch");
// }, timer);
