var express = require('express'),
	router = express.Router();

router.use(function (req, res, next) {
	next();
});

router.get('/', function (req, res, next) {
	res.json({
		status: 'ok',
		message: 'Hello API!'
	});
});

router.get('/test', function (req, res, next) {
	res.json({testing: 'dave'});
});

router.get('/test/:name', function (req, res, next) {
	res.json({name: req.params.name});
});

module.exports = router;