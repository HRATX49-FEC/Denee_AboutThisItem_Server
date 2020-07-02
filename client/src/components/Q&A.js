import React from 'react';
import Question from './Question.js';
import AskQuestion from './AskQuestion.js';
import Answer from './Answer.js';

const QA = ({catID, questions, addQuestion, askQuestion, toggleAskQuestion, addAnswer, answerIt, toggleAnswerIt}) => {
  console.log('questions', questions)
  if (questions.length > 0) {
    return (
      <div className="innerMargins">
        {questions.map(question => {
          return (
            <Question
            key={question.qID}
            catID={catID}
            question={question}
            addAnswer={addAnswer}
            answerIt={answerIt}
            toggleAnswerIt={toggleAnswerIt}/>
          )
        })}
        <div className="answerIt">
          <Answer
          catID={catID}
          addAnswer={addAnswer}
          answerIt={answerIt}
          toggleAnswerIt={toggleAnswerIt}/>
        </div>
        <div className="askQBox">
          <button className="largeWhiteButton">See all questions ({questions.length})</button>
          <AskQuestion
          catID={catID}
          addQuestion={addQuestion}
          askQuestion={askQuestion}
          toggleAskQuestion={toggleAskQuestion}/>
        </div>
      </div>
    )
  }
  return (
    <div className="innerMargins">
      <div className="askQBox">
        <button className="largeRedButton">Ask a question</button>
      </div>
    </div>
  )
}

export default QA;



/*
  var QAs = [];
  for (var i = 0; i < questions.length; i++) {
    for (var j = 0; j < answers.length; j++) {
      QAs.push([{'question': questions[i]['question'], 'qUser': questions[i]['qUser'], 'qID': questions[i]['qID']}])
      if (answers[j]['qID'] === questions[i]['qID']) {
        console.log('test', answers[j]['qID'])
        QAs[i].push({'aID': answers[j]['aID'], 'answer': answers[j]['answer'], 'aUser': answers[j]['aUser']})
      }
    }
  };
  console.log('QAs', QAs);
*/