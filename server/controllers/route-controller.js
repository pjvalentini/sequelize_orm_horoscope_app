var express = require('express');

var router = express.Router();
var mc = require('./model-controller.js');

var models = require('./../models');

router.get('/get-users', function(req, res) {
	mc.getAllUsers((users) => {
		// console.log(users);
		res.json(users);
	});
});

router.post('/create-user', (req, res) => {
	mc.createUser(
		req.body.name,
		req.body.birthdate,
		req.body.zodiac,
		(user) => {
			console.log(user);
			res.json(user);
		}
	);
});

router.get('/zodiac', function(req, res) {
	mc.getAllZodiacs((signs) => {
		// console.log(signs);
		res.json(signs);
	});
});

module.exports = router;
