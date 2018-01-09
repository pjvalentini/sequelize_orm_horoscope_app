var express = require('express');
var path = require('path');
var router = express.Router();
var mc = require('./model-controller.js');
var models = require('./../models');

router.get('/', function(req,res) {
	res.sendFile(path.join(__dirname, '../../client/public/html/home.html'));
});

router.get('/get-users', function(req, res) {
	mc.getAllUsers((users) => {
		console.log(users);
		res.json(users);
	});
});

router.post('/create-user', (req, res) => {
	mc.createUser(
		req.body.name,
		req.body.birthdate,
		req.body.zodiac,
		(user) => {
			// console.log(user);
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

router.get('/zodiac/:id', function(req, res) {
	mc.getOneZodiac(
		req.params.id,
		(signsById) => {
			console.log(signsById);
			res.json(signsById);
		}
	);
});

router.post('/create-zodiac', (req, res) => {
	mc.createZodiac(
		req.body.zodiac,
		req.body.todays_horoscope,
		req.body.description,
		req.body.date_range,
		(zodiacData) => {
			// console.log(zodiacData);
			res.json(zodiacData);
		}
	);
});



module.exports = router;
