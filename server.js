var express = require('express'),
    morgan = require('morgan'),
    app = express();

var apiRouter = require('./routes/api');
var testing = require('./routes/testing');

app.use(morgan('dev'));

app.use('/api', apiRouter);
app.use('/testing', testing);

app.use(function (err, req, res, next) {
    res.status(err.stats || 500);
});

app.get('/', function (req, res, next) {
    res.json({
        status: 'ok',
        message: 'hello, world!'
    });
});

var server = app.listen(process.env.HTTP_PORT || 8080, function () {
    var host = server.address().address;
    var port = server.address().port;
    console.log('Listening at http://%s:%s', host, port);
});