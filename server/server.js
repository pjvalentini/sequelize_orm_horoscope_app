var express = require('express');
var bodyParser = require('body-parser');
var fs = require('fs');
var path = require('path');
var routes = require('./controllers/route-controller.js');

var app = express();

var models = require('./models');
models.sequelize.sync();

app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: 'application/vnd.api+json' }));

app.use('/', routes);
app.use(express.static('./client'));

var PORT = process.env.PORT || 8000;

app.listen(PORT, function() {
	console.log("Listening on PORT " + PORT);
});
