var http = require('http').createServer(handler);

http.listen(3000);

function handler (req, res) {
    res.writeHead(200);
    res.end("Hi World..");
}