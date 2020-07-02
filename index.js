const express = require('express');
const path = require('path');
const db = require('./database/query.js');
const app = express();
// const compression = require('compression');
const PORT = process.env.PORT || 5100;


app.use(express.json());
// app.use(compression());
app.use(express.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, 'client', 'dist')));


app.get('/about/cat', (req, res) => {
  // console.log('get', req.query.catName)
  db.getCats(req.query.catName, (error, results) => {
    if (error) {
      console.error('error getting query', error);
      res.send(error, null);
    } else {
      // console.log('query results:', results);
      res.status(200).send(results);
    }
  });
});

app.get('/about/questions', (req, res) => {
  db.getQuestions(req.query.catName, (error, results) => {
    if (error) {
      console.error('error getting query', error);
      res.send(error, null);
    } else {
      // console.log('query results:', results);
      res.status(200).send(results);
    }
  });
});

// app.get('/about/answers', (req, res) => {
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

app.post('/about/question', (req, res) => {
  console.log('in /about/question');
  db.addQuestion(req.body.question, (error, results) => {
    console.log('results', results);
    if (error) {
      console.error(error);
      res.send(error, null);
    } else {
      res.status(200).send('sent');
    }
  });
});

app.post('/about/answer', (req, res) => {
  db.addAnswer(req.body.answer, (error, results) => {
    if (error) {
      res.send(error, null);
    } else {
      res.status(200).send('sent');
    }
  });
});


app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
