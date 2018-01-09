var bcrypt = require('bcryptjs');
var cryptojs = require('crypto-js');

module.exports = function(sequelize, DataTypes) {
	var User = sequelize.define('User', {
		name: {
			type: DataTypes.STRING,
		},
		birthdate: {
			type: DataTypes.STRING,
		},
		zodiac: {
			type: DataTypes.STRING,
		}
	}, {
		classMethods: {
					associate: function(models) {
					 // associations can be defined here
					},
		},
		instanceMethods: {
		},
	});
	return User;
};
