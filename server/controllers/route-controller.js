var express = require('express');
var path = require('path');
var router = express.Router();
var mc = require('./model-controller.js');
var models = require('./../models');

var html_creator = require('../helpers/html_creator.js');

// route to homepage - working
router.get('/', function(req,res) {
	res.sendFile(path.join(__dirname, '../../client/public/html/home.html'));
});

// route to sign-up page - working
// router.get('/sign-up', function(req, res) {
// 	res.sendfile(path.join(__dirname, '../../client/public/html/sign-up.html'));
// });

// route to sign-in page - working
// router.get('/sign-in', function(req, res) {
// 	res.sendfile(path.join(__dirname, '../../client/public/html/sign-in.html'));
// });

// this route lets you see all the users in the DB..- working
router.get('/get-users', function(req, res) {
	mc.getAllUsers((users) => {
		// console.log(users);
		res.json(users);
	});
});

// route to create users - works with postman
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

// OLD CODE _ NOT USING this now...
// router.get('/api/sign-up', function(req,res) { // ask about this - BAD BAD!
// 	if (req.id) {
// 		mc.getOneUser(
// 			req.params.id,
// 			(usersByName) => {
// 				console.log(usersByName);
// 				res.json(usersByName);
// 			}
// 		);
// 		res.json({ message: 'signed-in', id: req.body.id });
// 	}
// });

// router.post('/api/sign-up', function(req, res) {
// 	mc.createUser(
// 		req.body.name,
// 		req.body.birthdate,
// 		req.body.zodiac,
// 		(user) => {
// 			console.log(user);
// 			res.json(user);
// 		}
// 	);
// });

// route to get all zodiacs from DB - works
router.get('/zodiac', function(req, res) {
	mc.getAllZodiacs((signs) => {
		// console.log(signs);
		res.json(signs);
	});
});

// route to get zodaic by zodiac name - works
router.get('/zodiac/:zodiac', function(req, res) {
	mc.getOneZodiac(

		// Like this?
		// var zodiacObj = {};
		// zodiacObj.zodiac = zodiac.zodiac;
		// zodiacObj.todays_horoscope = zodiac.todays_horoscope;
		// zodiacObj.description = zodiac.description;
    //
		// var data = {
		// 	zodiac : zodiacObj,
		// }
		req.params.zodiac,
		(signsBySign) => {
			// console.log(signsById);
			res.json(signsBySign);
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
