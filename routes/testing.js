var express = require('express'),
	_ = require('lodash'),
	router = express.Router();


router.get('/', function (req, res, next) {
	var data = _.camelCase('--dave-was-bar');

	res.json({
		status: 'ok',
		data: data
	});
});


module.exports = router;