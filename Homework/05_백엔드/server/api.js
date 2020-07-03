const http = require('http');

http.createServer(function(request, response){
    if (request.url === '/ping') {
        response.setHeader('content-Type','text/html');
        response.end('<p>pong</p>');
    }
}).listen(3000, function(){
    console.log('Server ON');
})