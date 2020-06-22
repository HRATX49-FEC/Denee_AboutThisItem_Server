const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

const getCats = function(cat, callback) {
  connection.query('select c.ID, catName, age, livesLeft, sex, size, mouseCount, dogFriend, in_out, itemNum, category from cats c inner join specifications s on (s.ID=c.specs) inner join categories ct on (ct.ID=c.categoryID) where c.catName=(?)', cat, function(error, results) {
    if (error) {
      console.log('error from sql db', error);
      callback(error, null);
    } else {
      // console.log('got the db req', results);
      callback(null, results);
    }
  });
};



module.exports = {
  getCats
};
