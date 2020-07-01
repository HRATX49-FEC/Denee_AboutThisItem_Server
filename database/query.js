const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

const getCats = function(cat, callback) {
  connection.query('select cID, catName, age, livesLeft, sex, size, dogFriend, in_out, itemNum, category from cats c inner join specifications s on (s.catID=cID) inner join categories ct on (ct.ID=c.categoryID) where c.catName=(?)', cat, function(error, results) {
    if (error) {
      console.log('error from sql db', error);
      callback(error, null);
    } else {
      // console.log('got the db req cat', results);
      callback(null, results);
    }
  });
};

const getQuestions = function(cat, callback) {
  connection.query('select cID, qID, question, qUser, answer, aUser from cats c inner join questions q on (q.catID=cID) inner join answers a on (a.questionID=qID) where c.catName=(?)', cat, function(error, results) {
    if (error) {
      console.log('error from sql db', error);
      callback(error, null);
    } else {
      // console.log('got the db req QAs', results);
      callback(null, results);
    }
  });
};

const getAnswers = function(cat, callback) {
  connection.query('select cID, aID, qID, answer, aUser from cats c inner join questions q on (q.catID=cID) inner join answers a on (a.questionID=qID) where c.catName=(?)', cat, function(error, results) {
    if (error) {
      console.log('error from sql db', error);
      callback(error, null);
    } else {
      // console.log('got the db req QAs', results);
      callback(null, results);
    }
  });
};

const addQuestion = function(question, callback) {
  connection.query('insert into questions (catID, question, qUser) VALUES (?, ?, ?)', question, function(error, results) {
    if (error) {
      callback(error, null);
    } else {
      callback(null, results);
    }
  });
};

const addAnswer = function(answer, callback) {
  connection.query('insert into answers (questionID, answer, aUser) VALUES (?, ?, ?)', answer, function(error, results) {
    if (error) {
      callback(error, null);
    } else {
      callback(null, results);
    }
  });
};



module.exports = {
  getCats, getQuestions, getAnswers, addQuestion, addAnswer
};
