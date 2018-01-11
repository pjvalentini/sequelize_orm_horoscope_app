var express = require('express');
var path = require('path');
var router = express.Router();
var mc = require('./model-controller.js');
var models = require('./../models');

var html_creator = require('../helpers/html_creator.js');

// route to homepage 
router.get('/', function(req,res) {
	res.sendFile(path.join(__dirname, '../../client/public/html/home.html'));
});

// this route lets you see all the users in the DB
router.get('/get-users', function(req, res) {
	mc.getAllUsers((users) => {
		// console.log(users);
		res.json(users);
	});
});

// route to create users
router.post('/create-user', (req, res) => {
	console.log(req.body);
	mc.createUser(
		req.body.name,
		req.body.birthdate,
		req.body.zodiac,
		(user) => {
			// console.log(user);
			res.json(user);
		});
});

// route to get all zodiacs from DB
router.get('/zodiac', function(req, res) {
	mc.getAllZodiacs((signs) => {
		// console.log(signs);
		res.json(signs);
	});
});

// route to get zodaic by zodiac name
router.get('/zodiac/:zodiac', function(req, res) {
	mc.getOneZodiac(
		req.params.zodiac,
		(signsBySign) => {
			// console.log(signsById);
			// res.json(signsBySign);
			res.send(html_creator(signsBySign));
		}
	);
});

// route for creating a zodaic -- works through postman
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
