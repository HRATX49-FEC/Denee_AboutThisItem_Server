import React from 'react';
import Question from './Question.js';

const QA = (props) => {
  if (props.questions.length > 0) {
    return (
      <div className="innerMargins">
        {props.questions.map(question => {
          return (
            <Question
            key={question.qID}
            question={question}/>
          )
        })}
        <div className="askQBox">
          <button className="questionButton">Ask a question</button>
        </div>
      </div>
    )
  }
  return (
    <div className="innerMargins">
      <div className="askQBox">
        <button className="questionButton">Ask a question</button>
      </div>
    </div>
  )
}

export default QA;



/*
  var QAs = [];
  for (var i = 0; i < props.questions.length; i++) {
    for (var j = 0; j < props.answers.length; j++) {
      QAs.push([{'question': props.questions[i]['question'], 'qUser': props.questions[i]['qUser'], 'qID': props.questions[i]['qID']}])
      if (props.answers[j]['qID'] === props.questions[i]['qID']) {
        console.log('test', props.answers[j]['qID'])
        QAs[i].push({'aID': props.answers[j]['aID'], 'answer': props.answers[j]['answer'], 'aUser': props.answers[j]['aUser']})
      }
    }
  };
  console.log('QAs', QAs);
*/