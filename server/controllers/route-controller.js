var express = require('express');

var router = express.Router();
var mc = require('./model-controller.js');

router.get('get-users', function(req, res) {
	mc.getAllUsers((users) => {
		// console.log(users);
		res.json(users);
	});
});

// ALWAYS FUCKING MAKE SURE THIS IS THERE!!!
module.exports = router;
