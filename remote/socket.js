var io = require('socket.io').listen(3000);

io.sockets.on('connection', function (socket) {

  var socket = socket;
  
  io.sockets.emit('news', {sockets: io.sockets.manager.connected});

  socket.on('chat', function (data) {
  	data.user = socket.id;
  	socket.broadcast.emit('echo', data);
  });

});