const express = require('express');
const app = express();

app.get('/ping/:message', function(request, response){
    response.json({
        message: request.params.message,
    });
})
app.listen(3000, function(){
    console.log('server on');
})