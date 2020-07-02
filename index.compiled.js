"use strict";

var express = require('express');

var path = require('path');

var db = require('./database/query.js');

var app = express();

var compression = require('compression');

var PORT = process.env.PORT || 5100;
app.use(express.json());
app.use(compression());
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
  db.getQuestions(req.query.catName, function (error, results) {
    if (error) {
      console.error('error getting query', error);
      res.send(error, null);
    } else {
      // console.log('query results:', results);
      res.status(200).send(results);
    }
  });
}); // app.get('/about/answers', (req, res) => {
//   // console.log('get', req.query.catName)
//   db.getAnswers(req.query.catName, (error, results) => {
//     if (error) {
//       console.error('error getting query', error);
//       res.send(error, null);
//     } else {
//       // console.log('query results:', results);
//       res.status(200).send(results);
//     }
//   });
// });

app.post('/about/question', function (req, res) {
  console.log('in /about/question');
  db.addQuestion(req.body.question, function (error, results) {
    console.log('results', results);

    if (error) {
      console.error(error);
      res.send(error, null);
    } else {
      res.status(200).send('sent');
    }
  });
});
app.post('/about/answer', function (req, res) {
  db.addAnswer(req.body.answer, function (error, results) {
    if (error) {
      res.send(error, null);
    } else {
      res.status(200).send('sent');
    }
  });
});
app.listen(PORT, function () {
  console.log("listening on port ".concat(PORT));
});
