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

module.exports = router;