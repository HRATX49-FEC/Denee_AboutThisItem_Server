const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

const getCats = function(callback) {
  connection.query('SELECT * FROM cats', function(error, results) {
    if (error) {
      console.log('error from sql db', error);
      callback(error, null);
    } else {
      console.log('got the db req');
      callback(null, results);
    }
  });
};



module.exports = {
  getCats
};
