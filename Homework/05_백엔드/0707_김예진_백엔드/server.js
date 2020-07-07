const http = require('http');
const fs = require('fs');

http.createServer(function (request, respons){
    fs.readFile(__dirname + '/My Page/Main.html', function(err, data){
        if(err){
            console.log(err);
        }
        respons.end(data);
    })
}).listen(3000, function(){
    console.log('server on!');
})