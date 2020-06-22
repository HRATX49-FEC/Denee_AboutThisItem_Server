const express = require('express');
const bodyParser = require('body-parser');
const db = require('../database');
const app = express();
const PORT = 5100;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + '/../client/dist'));


app.get('/about', (req, res) => {
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


app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
