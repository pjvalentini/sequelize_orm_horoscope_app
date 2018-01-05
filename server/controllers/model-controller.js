
var models = require('./../models');

module.exports = {
	getAllUsers: (users) => {
		models.User.findAll({
			attributes: ['name', 'birthdate'],
		}).then(function(res) {
			users(res);
		});
	},
};

createUser: (name, birthdate, newUser) => {
	models.User.create({
		name: name,
		birthdate: birthdate,
	}).then((res) => {
		newUser(res);
	});
};

getAllZodiacs: (signs) => {
	models.Horoscope.findAll({}).then((res) => {
		signs(res);
	});
};

getOneZodiac: (id , signs) => {
	models.Horoscope.findAll({ where: { id: id } }).then((res) => {
		signs(res);
	});
};

createZodiac: (zodiac, todays_horoscope, description, date_range, zodiacData) => {
	models.Horoscope.create({
		zodiac: zodiac,
		todays_horoscope: todays_horoscope,
		description: description,
		date_range: date_range,
	}).then((res) => {
		zodiacData(res);
	});
};
