"use strict";

var express = require('express');

var path = require('path');

var db = require('./database/query.js');

var app = express();
var PORT = process.env.PORT || 5100;
app.use(express.json());
app.use(express.urlencoded({
  extended: true
}));
app.use(express["static"](path.join(__dirname, 'client', 'dist')));
app.get('/about/cat', function (req, res) {
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
app.get('/about/questions', function (req, res) {
  // console.log('get', req.query.catName)
  db.getQAs(req.query.catName, function (error, results) {
    if (error) {
      console.error('error getting query', error);
      res.send(error, null);
    } else {
      console.log('query results:', results);
      res.status(200).send(results);
    }
  });
});
app.listen(PORT, function () {
  console.log("listening on port ".concat(PORT));
});
