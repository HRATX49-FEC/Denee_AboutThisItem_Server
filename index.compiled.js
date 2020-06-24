"use strict";

var express = require('express');

var bodyParser = require('body-parser');

var db = require('../database');

var app = express();
var PORT = process.env.PORT || 5100;
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));
app.use(express["static"](__dirname + '/../client/dist'));
app.get('/about', function (req, res) {
  // console.log('get', req.query.catName)
  db.getCats(req.query.catName, function (error, results) {
    if (error) {
      console.error('error getting query', error);
      res.send(error, null);
    } else {
      // console.log('query results:', results);
      res.status(200).send(results);
    }
  });
});
app.listen(PORT, function () {
  console.log("listening on port ".concat(PORT));
});
