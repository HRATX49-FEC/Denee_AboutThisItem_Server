const express = require('express');
const path = require('path');
const db = require('./database/query.js');
const app = express();
const PORT = process.env.PORT || 5100;

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, 'client', 'dist')));


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
