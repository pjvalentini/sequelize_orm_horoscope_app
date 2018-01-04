'use strict';

module.exports = function(sequelize, DataTypes) {
	var Horoscope = sequelize.define('Horoscope', {
			zodiac: {
				type: DataTypes.STRING,
			},
			todays_horoscope: {
				type: DataTypes.STRING,
			},
			description: {
				type: DataTypes.STRING,
			},
			date_range: {
				type: DataTypes.DATE,
			},
	}, {
		classMethods: {
			associate: function(models) {
				// assiciations can be defined here.
			},
		},
		instanceMethods: {
		},
	});
	return Horoscope;
};
