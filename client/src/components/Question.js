import React from 'react';
import Answer from './Answer.js';

const Question = (props) => {
  console.log('qa', props.question)
  return (
    <div className="questionsBox">
      <div className="question">Q:{props.question.question}</div>
      <div className="qUser">user: {props.question.qUser}</div>
      <div className="answerBox">
        <div className="answerA">A:
          <div className="answer">{props.question.answer}</div>
        </div>
        <div className="aUser">user: {props.question.aUser}
          <div className="helpful">
            <a href="#" className="helpNotReport">Helpful (0)</a>
            <a href="#" className="helpNotReport">Not helpful (0)</a>
            <a href="#" className="helpNotReport">Report</a>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Question;