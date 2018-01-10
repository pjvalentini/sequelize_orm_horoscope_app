
var models = require('./../models');

module.exports = {
	getAllUsers: (users) => {
		models.User.findAll({
			attributes: ['name', 'birthdate', 'zodiac'],
		}).then(function(res) {
			users(res);
		});
	},

	// getOneUser: (id) => { // ask about this
	// 	models.User.findAll({ where: { id: id } }).then((res) => {
	// 		id(res);
	// 	});
	// },

	createUser: (name, birthdate, zodiac, newUser) => {
		models.User.create({
			name: name,
			birthdate: birthdate,
			zodiac: zodiac,
		}).then((res) => {
			newUser(res);
		});
	},

	getAllZodiacs: (signs) => {
		models.Horoscope.findAll({}).then((res) => {
			signs(res);
		});
	},

	getOneZodiac: (zodiac , signs) => {
		models.Horoscope.findOne({ where: { zodiac: zodiac } }).then((res) => {
			signs(res);
		});
	},

	createZodiac: (zodiac, todays_horoscope, description, date_range, zodiacData) => {
		models.Horoscope.create({
			zodiac: zodiac,
			todays_horoscope: todays_horoscope,
			description: description,
			date_range: date_range,
		}).then((res) => {
			zodiacData(res);
		});
	},
};
