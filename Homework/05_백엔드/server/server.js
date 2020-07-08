const http =  require('http');
const fs = require('fs');

http.createServer(function (request, response){
    fs.readFile(__dirname + '/MyPage.html', function(err, data){
        if (err) {
            console.log(err);
        }
        response.end(data);
    })
}).listen(3000, function(){
    console.log('server on!');
})