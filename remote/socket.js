var io = require('socket.io').listen(3000);
	// io.set('resource', 'msg/socket.io');

io.sockets.on('connection', function (socket) {

  var socket = socket;
  
  io.sockets.emit('news', {hello: "world"});

  // socket.on('chat', function (data) {
  // 	data.user = socket.id;
  // 	socket.broadcast.emit('echo', data);
  // });

});