MessageBus.start(); // call once at startup

// how often do you want the callback to fire in ms
MessageBus.callbackInterval = 500;
MessageBus.subscribe("/channel", function(data){
  $('#messages').append("<br>" + data);
});
