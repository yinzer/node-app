ar express = require('express'),
    app = express();

app.get('/', function (req, res) {
    res.json({
	status: 'ok',
	message: 'Hello from inside a container!'
    });
});

var server = app.listen(process.env.HTTP_PORT || 8080, function () {
    var host = server.address().address;
    var port = server.address().port;
    console.log('Listening at http://%s:%s', host, port);
});